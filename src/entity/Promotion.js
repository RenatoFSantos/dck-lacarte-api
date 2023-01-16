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
exports.Promotion = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Company_1 = require("./Company");
var Promotion = /** @class */ (function (_super) {
    __extends(Promotion, _super);
    function Promotion() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'prom_nm_promotion', type: 'varchar', length: 100, comment: 'promotion name', default: '' }),
        __metadata("design:type", String)
    ], Promotion.prototype, "promNmPromotion", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prom_ds_promotion', type: 'varchar', length: 500, comment: 'promotion description', nullable: true }),
        __metadata("design:type", String)
    ], Promotion.prototype, "promDsPromotion", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prom_cd_qrcode', type: 'varchar', length: 500, comment: 'qrcode image', default: '' }),
        __metadata("design:type", String)
    ], Promotion.prototype, "promCdQrcode", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prom_dt_start', type: "timestamp", precision: 6, comment: 'Start date' }),
        __metadata("design:type", Date)
    ], Promotion.prototype, "promDtStart", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prom_dt_finish', type: "timestamp", precision: 6, comment: 'Finish date' }),
        __metadata("design:type", Date)
    ], Promotion.prototype, "promDtFinish", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prom_cd_status', type: "char", length: 1, comment: 'Status: A-Active, C-Closed, P-Pending, ', default: 'P' }),
        __metadata("design:type", String)
    ], Promotion.prototype, "promCdStatus", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Company_1.Company; }, { eager: true }),
        __metadata("design:type", Company_1.Company)
    ], Promotion.prototype, "company", void 0);
    Promotion = __decorate([
        (0, typeorm_1.Entity)({ name: 'Promotion' })
    ], Promotion);
    return Promotion;
}(BaseEntity_1.BaseEntity));
exports.Promotion = Promotion;
//# sourceMappingURL=Promotion.js.map