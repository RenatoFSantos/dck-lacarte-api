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
exports.User = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var RefreshToken_1 = require("./RefreshToken");
var User = /** @class */ (function (_super) {
    __extends(User, _super);
    function User() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_sg_user', type: 'varchar', length: 20, comment: 'Codname' }),
        __metadata("design:type", String)
    ], User.prototype, "userSgUser", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_nm_name', type: 'varchar', length: 25, comment: 'Name' }),
        __metadata("design:type", String)
    ], User.prototype, "userNmName", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_nm_lastname', type: 'varchar', length: 50, comment: 'Lastname', nullable: true }),
        __metadata("design:type", String)
    ], User.prototype, "userNmLastname", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_dt_birthdate', type: 'datetime', comment: 'Birth Date', nullable: true }),
        __metadata("design:type", Date)
    ], User.prototype, "userDtBirthdate", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_ds_email', type: 'varchar', length: 100, comment: 'Email' }),
        __metadata("design:type", String)
    ], User.prototype, "userDsEmail", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_ds_phone', type: 'varchar', length: 20, comment: 'Phone', nullable: true }),
        __metadata("design:type", String)
    ], User.prototype, "userDsPhone", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_ds_smartphone', type: 'varchar', length: 20, comment: 'Smartphone', nullable: true }),
        __metadata("design:type", String)
    ], User.prototype, "userDsSmartphone", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_ds_whatsapp', type: 'varchar', length: 20, comment: 'Whatsapp', nullable: true }),
        __metadata("design:type", String)
    ], User.prototype, "userDsWhatsapp", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_cd_password', type: 'varchar', length: 50, comment: 'Password' }),
        __metadata("design:type", String)
    ], User.prototype, "userCdPassword", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_cd_recovery', type: 'varchar', length: 50, comment: 'Password Recovery' }),
        __metadata("design:type", String)
    ], User.prototype, "userCdRecovery", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_cd_type', type: 'char', length: 1, comment: 'User type: A-Administrador, G-Gerente, O-Operador, V-Visualizador', default: 'V' }),
        __metadata("design:type", String)
    ], User.prototype, "userCdType", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_tx_avatar', type: 'varchar', length: 500, comment: 'Avatar', nullable: true }),
        __metadata("design:type", String)
    ], User.prototype, "userTxAvatar", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_vl_cashback', type: 'decimal', precision: 10, scale: 2, comment: 'Accumulated cashback total', default: 0 }),
        __metadata("design:type", String)
    ], User.prototype, "userVlCashback", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_vl_score', type: 'decimal', precision: 10, scale: 2, comment: 'Total score', default: 0 }),
        __metadata("design:type", String)
    ], User.prototype, "userVlScore", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_vl_rating', type: 'decimal', precision: 10, scale: 2, comment: 'Total Rating', default: 0 }),
        __metadata("design:type", String)
    ], User.prototype, "userVlRating", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'user_cd_refreshtoken', type: 'varchar', length: 500, nullable: true, comment: 'Refreshtoken' }),
        __metadata("design:type", RefreshToken_1.RefreshToken)
    ], User.prototype, "refreshToken", void 0);
    User = __decorate([
        (0, typeorm_1.Entity)({ name: 'User' })
    ], User);
    return User;
}(BaseEntity_1.BaseEntity));
exports.User = User;
//# sourceMappingURL=User.js.map