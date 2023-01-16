"use strict";
var __extends = (this && this.__extends) || (function () {
    var extendStatics = function (d, b) {
        extendStatics = Object.setPrototypeOf ||
            ({ __proto__: [] } instanceof Array && function (d, b) { d.__proto__ = b; }) ||
            function (d, b) { for (var p in b) if (Object.prototype.hasOwnProperty.call(b, p)) d[p] = b[p]; };
        return extendStatics(d, b);
    };
    return function (d, b) {
        if (typeof b !== "function" && b !== null)
            throw new TypeError("Class extends value " + String(b) + " is not a constructor or null");
        extendStatics(d, b);
        function __() { this.constructor = d; }
        d.prototype = b === null ? Object.create(b) : (__.prototype = b.prototype, new __());
    };
})();
var __awaiter = (this && this.__awaiter) || function (thisArg, _arguments, P, generator) {
    function adopt(value) { return value instanceof P ? value : new P(function (resolve) { resolve(value); }); }
    return new (P || (P = Promise))(function (resolve, reject) {
        function fulfilled(value) { try { step(generator.next(value)); } catch (e) { reject(e); } }
        function rejected(value) { try { step(generator["throw"](value)); } catch (e) { reject(e); } }
        function step(result) { result.done ? resolve(result.value) : adopt(result.value).then(fulfilled, rejected); }
        step((generator = generator.apply(thisArg, _arguments || [])).next());
    });
};
var __generator = (this && this.__generator) || function (thisArg, body) {
    var _ = { label: 0, sent: function() { if (t[0] & 1) throw t[1]; return t[1]; }, trys: [], ops: [] }, f, y, t, g;
    return g = { next: verb(0), "throw": verb(1), "return": verb(2) }, typeof Symbol === "function" && (g[Symbol.iterator] = function() { return this; }), g;
    function verb(n) { return function (v) { return step([n, v]); }; }
    function step(op) {
        if (f) throw new TypeError("Generator is already executing.");
        while (_) try {
            if (f = 1, y && (t = op[0] & 2 ? y["return"] : op[0] ? y["throw"] || ((t = y["return"]) && t.call(y), 0) : y.next) && !(t = t.call(y, op[1])).done) return t;
            if (y = 0, t) op = [op[0] & 2, t.value];
            switch (op[0]) {
                case 0: case 1: t = op; break;
                case 4: _.label++; return { value: op[1], done: false };
                case 5: _.label++; y = op[1]; op = [0]; continue;
                case 7: op = _.ops.pop(); _.trys.pop(); continue;
                default:
                    if (!(t = _.trys, t = t.length > 0 && t[t.length - 1]) && (op[0] === 6 || op[0] === 2)) { _ = 0; continue; }
                    if (op[0] === 3 && (!t || (op[1] > t[0] && op[1] < t[3]))) { _.label = op[1]; break; }
                    if (op[0] === 6 && _.label < t[1]) { _.label = t[1]; t = op; break; }
                    if (t && _.label < t[2]) { _.label = t[2]; _.ops.push(op); break; }
                    if (t[2]) _.ops.pop();
                    _.trys.pop(); continue;
            }
            op = body.call(thisArg, _);
        } catch (e) { op = [6, e]; y = 0; } finally { f = t = 0; }
        if (op[0] & 5) throw op[1]; return { value: op[0] ? op[1] : void 0, done: true };
    }
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.UserController = void 0;
var User_1 = require("../entity/User");
var BaseController_1 = require("./BaseController");
var md5 = require("md5");
var fileHelper_1 = require("../helpers/fileHelper");
var GenerateToken_1 = require("../provider/GenerateToken");
var typeorm_1 = require("typeorm");
var RefreshToken_1 = require("../entity/RefreshToken");
var GenerateRefreshToken_1 = require("../provider/GenerateRefreshToken");
var configMail_1 = require("../configuration/configMail");
var nodemailer = require("nodemailer");
var UserController = /** @class */ (function (_super) {
    __extends(UserController, _super);
    function UserController() {
        return _super.call(this, User_1.User) || this;
    }
    UserController.prototype.auth = function (request) {
        return __awaiter(this, void 0, void 0, function () {
            var _a, userDsEmail, userCdPassword, user, generateToken, token, generateRefreshToken, refreshToken;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        _a = request.body, userDsEmail = _a.userDsEmail, userCdPassword = _a.userCdPassword;
                        if (!userDsEmail || !userCdPassword) {
                            return [2 /*return*/, {
                                    status: 400,
                                    message: "Informe o email e a senha para efetuar o login",
                                }];
                        }
                        return [4 /*yield*/, this.repository.findOne({
                                where: [
                                    { userDsEmail: userDsEmail, userCdPassword: md5(userCdPassword) },
                                    { userDsEmail: userDsEmail, userCdRecovery: userCdPassword },
                                ],
                            })];
                    case 1:
                        user = _b.sent();
                        if (!user) return [3 /*break*/, 5];
                        generateToken = new GenerateToken_1.GenerateToken();
                        return [4 /*yield*/, generateToken.execute(user)];
                    case 2:
                        token = _b.sent();
                        // Delete user refreshtoken
                        return [4 /*yield*/, (0, typeorm_1.getConnection)()
                                .createQueryBuilder()
                                .delete()
                                .from(RefreshToken_1.RefreshToken)
                                .where("userId = :id", { id: user.uid })
                                .execute()];
                    case 3:
                        // Delete user refreshtoken
                        _b.sent();
                        generateRefreshToken = new GenerateRefreshToken_1.GenerateRefreshToken();
                        return [4 /*yield*/, generateRefreshToken.execute(user)];
                    case 4:
                        refreshToken = _b.sent();
                        return [2 /*return*/, { token: token, refreshToken: refreshToken }];
                    case 5: return [2 /*return*/, { status: 404, message: "Email ou senha inválida!" }];
                }
            });
        });
    };
    UserController.prototype.createUser = function (request) {
        return __awaiter(this, void 0, void 0, function () {
            var _a, userSgUser, userNmName, userNmLastname, userDtBirthdate, userDsEmail, userDsPhone, userDsSmartphone, userDsWhatsapp, userCdPassword, userCdConfirmPassword, userCdType, userTxAvatar, _user, pictureCreatedResult;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        _a = request.body, userSgUser = _a.userSgUser, userNmName = _a.userNmName, userNmLastname = _a.userNmLastname, userDtBirthdate = _a.userDtBirthdate, userDsEmail = _a.userDsEmail, userDsPhone = _a.userDsPhone, userDsSmartphone = _a.userDsSmartphone, userDsWhatsapp = _a.userDsWhatsapp, userCdPassword = _a.userCdPassword, userCdConfirmPassword = _a.userCdConfirmPassword, userCdType = _a.userCdType, userTxAvatar = _a.userTxAvatar;
                        _super.prototype.isRequired.call(this, userSgUser, "A sigla do usuário é obrigatória!");
                        _super.prototype.isRequired.call(this, userNmName, "O nome do usuário é obrigatório!");
                        _super.prototype.isEmail.call(this, userDsEmail, "O email é obrigatório e deve ser válido!");
                        _super.prototype.isRequired.call(this, userCdPassword, "A senha é obrigatória!");
                        _super.prototype.isRequired.call(this, userCdConfirmPassword, "A confirmação da senha é obrigatória!");
                        _super.prototype.isValidPassword.call(this, userCdPassword, userCdConfirmPassword, "As senhas não conferem. Favor verificar!");
                        _user = new User_1.User();
                        _user.userSgUser = userSgUser;
                        _user.userNmName = userNmName;
                        _user.userNmLastname = userNmLastname;
                        _user.userDtBirthdate = userDtBirthdate;
                        _user.userDsEmail = userDsEmail;
                        _user.userDsPhone = userDsPhone;
                        _user.userDsSmartphone = userDsSmartphone;
                        _user.userDsWhatsapp = userDsWhatsapp;
                        _user.userCdPassword = userCdPassword;
                        _user.userCdType = userCdType;
                        _user.userTxAvatar = userTxAvatar;
                        if (!_user.userTxAvatar) return [3 /*break*/, 2];
                        return [4 /*yield*/, fileHelper_1.FileHelper.writePicture(_user.userTxAvatar)];
                    case 1:
                        pictureCreatedResult = _b.sent();
                        if (pictureCreatedResult)
                            _user.userTxAvatar = pictureCreatedResult;
                        _b.label = 2;
                    case 2:
                        if (userCdPassword) {
                            _user.userCdPassword = md5(userCdPassword);
                            _user.userCdRecovery = _user.userCdPassword.substring(0, 5);
                        }
                        return [2 /*return*/, _super.prototype.save.call(this, _user, request)];
                }
            });
        });
    };
    UserController.prototype.save = function (request) {
        return __awaiter(this, void 0, void 0, function () {
            var _user, pictureCreatedResult;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _user = request.body;
                        _super.prototype.isRequired.call(this, _user.userSgUser, "A sigla do usuário é obrigatória!");
                        _super.prototype.isRequired.call(this, _user.userNmName, "O nome do usuário é obrigatório!");
                        _super.prototype.isEmail.call(this, _user.userDsEmail, "O email é obrigatório e deve ser válido!");
                        _super.prototype.isRequired.call(this, _user.userCdPassword, "A senha é obrigatória!");
                        if (!_user.userTxAvatar) return [3 /*break*/, 2];
                        return [4 /*yield*/, fileHelper_1.FileHelper.writePicture(_user.userTxAvatar)];
                    case 1:
                        pictureCreatedResult = _a.sent();
                        if (pictureCreatedResult)
                            _user.userTxAvatar = pictureCreatedResult;
                        _a.label = 2;
                    case 2:
                        if (_user.userCdPassword) {
                            _user.userCdPassword = md5(_user.userCdPassword);
                            _user.userCdRecovery = _user.userCdPassword.substring(0, 5);
                        }
                        return [2 /*return*/, _super.prototype.save.call(this, _user, request)];
                }
            });
        });
    };
    UserController.prototype.getUserByEmail = function (request) {
        return __awaiter(this, void 0, void 0, function () {
            var idEmail, resource;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        idEmail = request.params.email ? request.params.email.trim() : null;
                        resource = new User_1.User();
                        if (!idEmail) return [3 /*break*/, 2];
                        return [4 /*yield*/, this.repository.findOne({
                                where: {
                                    userDsEmail: (0, typeorm_1.Equal)("" + idEmail),
                                    active: true,
                                    deleted: false,
                                },
                            })];
                    case 1:
                        resource = _a.sent();
                        return [2 /*return*/, resource];
                    case 2: return [2 /*return*/];
                }
            });
        });
    };
    UserController.prototype.sendEmail = function (request) {
        return __awaiter(this, void 0, void 0, function () {
            var _user, transporter, mailOptions, info;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0:
                        _user = request.body;
                        return [4 /*yield*/, nodemailer.createTransport({
                                host: configMail_1.default.host,
                                port: configMail_1.default.port,
                                secure: configMail_1.default.secure,
                                auth: {
                                    user: configMail_1.default.auth.user,
                                    pass: configMail_1.default.auth.pass,
                                },
                            })];
                    case 1:
                        transporter = _a.sent();
                        mailOptions = {
                            from: "planejamento@bicas.mg.gov.br",
                            to: _user.userDsEmail,
                            subject: "LACARTE - Recuperação de Senha",
                            text: "",
                            html: "\n            <p>Ol\u00E1! Segue sua senha de acesso: <strong>" + _user.userCdRecovery + "</strong></p>\n            <p>Assim que acessar o sistema, por favor, altere a senha para sua seguran\u00E7a!</p>\n            <p>Obrigado por utilizar o <strong>LACARTE</strong></p>\n            ",
                        };
                        return [4 /*yield*/, transporter.sendMail(mailOptions)];
                    case 2:
                        info = _a.sent();
                        return [2 /*return*/, info];
                }
            });
        });
    };
    return UserController;
}(BaseController_1.BaseController));
exports.UserController = UserController;
//# sourceMappingURL=UserController.js.map