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
var Ingredient_1 = require("./../entity/Ingredient");
var typeorm_1 = require("typeorm");
var Address_1 = require("../entity/Address");
var Category_1 = require("../entity/Category");
var Company_1 = require("../entity/Company");
var Fidelity_1 = require("../entity/Fidelity");
var Menu_1 = require("../entity/Menu");
var Product_1 = require("../entity/Product");
var RefreshToken_1 = require("../entity/RefreshToken");
var Segment_1 = require("../entity/Segment");
var User_1 = require("../entity/User");
var UserAddress_1 = require("../entity/UserAddress");
var ProductIngredient_1 = require("../entity/ProductIngredient");
var Order_1 = require("../entity/Order");
var OrderMenu_1 = require("../entity/OrderMenu");
var Promotion_1 = require("../entity/Promotion");
var Voucher_1 = require("../entity/Voucher");
var cfg = require('../../ormconfig.json');
exports.default = {
    createConnection: function () { return __awaiter(void 0, void 0, void 0, function () {
        return __generator(this, function (_a) {
            switch (_a.label) {
                case 0: return [4 /*yield*/, (0, typeorm_1.createConnection)({
                        type: cfg.type,
                        host: cfg.host,
                        port: cfg.port,
                        username: cfg.username,
                        password: cfg.password,
                        database: cfg.database,
                        synchronize: true,
                        logging: false,
                        entities: [
                            User_1.User,
                            Address_1.Address,
                            UserAddress_1.UserAddress,
                            Segment_1.Segment,
                            Company_1.Company,
                            Promotion_1.Promotion,
                            Fidelity_1.Fidelity,
                            Category_1.Category,
                            Product_1.Product,
                            Ingredient_1.Ingredient,
                            ProductIngredient_1.ProductIngredient,
                            Menu_1.Menu,
                            RefreshToken_1.RefreshToken,
                            Order_1.Order,
                            OrderMenu_1.OrderMenu,
                            Voucher_1.Voucher
                        ]
                    })];
                case 1:
                    _a.sent();
                    return [2 /*return*/];
            }
        });
    }); }
};
//# sourceMappingURL=connection.js.map