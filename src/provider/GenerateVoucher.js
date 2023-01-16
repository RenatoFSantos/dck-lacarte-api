"use strict";
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
exports.GenerateVoucher = void 0;
var typeorm_1 = require("typeorm");
var dayjs = require("dayjs");
var Voucher_1 = require("../entity/Voucher");
var GenerateVoucher = /** @class */ (function () {
    function GenerateVoucher() {
    }
    GenerateVoucher.prototype.execute = function () {
        return __awaiter(this, void 0, void 0, function () {
            var newVoucher, generateVoucher, _uid, tbVoucher, codeExpired, _expiresIn, _voucher;
            var _a;
            return __generator(this, function (_b) {
                switch (_b.label) {
                    case 0:
                        newVoucher = {};
                        generateVoucher = new Voucher_1.Voucher();
                        _uid = "";
                        tbVoucher = new Voucher_1.Voucher();
                        this._repository = (0, typeorm_1.getRepository)("Voucher");
                        return [4 /*yield*/, this._repository.findOne({
                                deleted: false,
                                active: true,
                            })];
                    case 1:
                        tbVoucher = _b.sent();
                        if (!tbVoucher) return [3 /*break*/, 7];
                        _uid = tbVoucher.uid;
                        codeExpired = true;
                        if (!codeExpired) return [3 /*break*/, 5];
                        // Delete register
                        return [4 /*yield*/, (0, typeorm_1.getConnection)()
                                .createQueryBuilder()
                                .delete()
                                .where("uid = :id", { id: _uid })
                                .from(Voucher_1.Voucher)
                                .execute()];
                    case 2:
                        // Delete register
                        _b.sent();
                        _expiresIn = dayjs().add(30, "second").unix();
                        return [4 /*yield*/, this.generateCode()];
                    case 3:
                        _voucher = _b.sent();
                        newVoucher = {
                            uid: _uid,
                            voucCdCode: _voucher,
                            voucVlExpiresin: _expiresIn,
                        };
                        return [4 /*yield*/, this.save(newVoucher)];
                    case 4:
                        generateVoucher = _b.sent();
                        return [3 /*break*/, 6];
                    case 5:
                        // Voucher still valid
                        Object.assign(generateVoucher, tbVoucher);
                        _b.label = 6;
                    case 6: return [3 /*break*/, 10];
                    case 7:
                        _a = {
                            voucVlExpiresin: dayjs().add(30, "second").unix()
                        };
                        return [4 /*yield*/, this.generateCode()];
                    case 8:
                        newVoucher = (_a.voucCdCode = _b.sent(),
                            _a);
                        return [4 /*yield*/, this.save(newVoucher)];
                    case 9:
                        generateVoucher = _b.sent();
                        _b.label = 10;
                    case 10: return [2 /*return*/, generateVoucher];
                }
            });
        });
    };
    GenerateVoucher.prototype.generateCode = function () {
        return __awaiter(this, void 0, void 0, function () {
            var voucherCode;
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, Math.floor(Math.random() * 1000000).toString()];
                    case 1:
                        voucherCode = _a.sent();
                        if (voucherCode.length < 6) {
                            voucherCode = ("00000" + voucherCode).slice(-6);
                        }
                        console.log("Voucher Generated=", voucherCode);
                        return [2 /*return*/, voucherCode];
                }
            });
        });
    };
    GenerateVoucher.prototype.save = function (model) {
        return __awaiter(this, void 0, void 0, function () {
            return __generator(this, function (_a) {
                switch (_a.label) {
                    case 0: return [4 /*yield*/, this._repository.save(model)];
                    case 1: return [2 /*return*/, _a.sent()];
                }
            });
        });
    };
    return GenerateVoucher;
}());
exports.GenerateVoucher = GenerateVoucher;
//# sourceMappingURL=GenerateVoucher.js.map