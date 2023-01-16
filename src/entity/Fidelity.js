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
var __decorate = (this && this.__decorate) || function (decorators, target, key, desc) {
    var c = arguments.length, r = c < 3 ? target : desc === null ? desc = Object.getOwnPropertyDescriptor(target, key) : desc, d;
    if (typeof Reflect === "object" && typeof Reflect.decorate === "function") r = Reflect.decorate(decorators, target, key, desc);
    else for (var i = decorators.length - 1; i >= 0; i--) if (d = decorators[i]) r = (c < 3 ? d(r) : c > 3 ? d(target, key, r) : d(target, key)) || r;
    return c > 3 && r && Object.defineProperty(target, key, r), r;
};
var __metadata = (this && this.__metadata) || function (k, v) {
    if (typeof Reflect === "object" && typeof Reflect.metadata === "function") return Reflect.metadata(k, v);
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.Fidelity = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Promotion_1 = require("./Promotion");
var User_1 = require("./User");
var Fidelity = /** @class */ (function (_super) {
    __extends(Fidelity, _super);
    function Fidelity() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'fide_in_validate', comment: 'Valid: 0 - False, 1 - True', default: true }),
        __metadata("design:type", Boolean)
    ], Fidelity.prototype, "fideInValidate", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'fide_qn_voucher', comment: 'Number of vouchers', default: 0 }),
        __metadata("design:type", Number)
    ], Fidelity.prototype, "fideQnVoucher", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Promotion_1.Promotion; }, { eager: true }),
        __metadata("design:type", Promotion_1.Promotion)
    ], Fidelity.prototype, "promotion", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return User_1.User; }, { eager: true }),
        __metadata("design:type", User_1.User)
    ], Fidelity.prototype, "user", void 0);
    Fidelity = __decorate([
        (0, typeorm_1.Entity)({ name: 'Fidelity' })
    ], Fidelity);
    return Fidelity;
}(BaseEntity_1.BaseEntity));
exports.Fidelity = Fidelity;
//# sourceMappingURL=Fidelity.js.map