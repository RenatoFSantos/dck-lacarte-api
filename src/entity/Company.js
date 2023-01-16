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
exports.Company = void 0;
var typeorm_1 = require("typeorm");
var Address_1 = require("./Address");
var BaseEntity_1 = require("./BaseEntity");
var Segment_1 = require("./Segment");
var User_1 = require("./User");
var Company = /** @class */ (function (_super) {
    __extends(Company, _super);
    function Company() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_nm_company', type: 'varchar', length: 100, comment: 'Company name', default: '' }),
        __metadata("design:type", String)
    ], Company.prototype, "compNmCompany", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_nm_trademark', type: 'varchar', length: 100, comment: 'Trade name', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compNmTrademark", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_company', type: 'varchar', length: 500, comment: 'Description', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsCompany", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_cd_cnpj', type: 'varchar', length: 20, comment: 'CNPJ', default: '' }),
        __metadata("design:type", String)
    ], Company.prototype, "compCdCNPJ", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_phone', type: 'varchar', length: 20, comment: 'Phone', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsPhone", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_smartphone', type: 'varchar', length: 20, comment: 'Smartphone', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsSmartphone", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_whatsapp', type: 'varchar', length: 20, comment: 'Whatsapp', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsWhatsapp", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_email', type: 'varchar', length: 80, comment: 'Email', default: '' }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsEmail", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_site', type: 'varchar', length: 80, comment: 'Whatsapp', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsSite", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_cd_pix', type: 'varchar', length: 20, comment: 'PIX', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compCdPix", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_tx_image', type: 'varchar', length: 500, comment: 'Image default', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compTxImage", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_in_delivery', default: false, comment: 'Delivery 0 = False/ 1 = true' }),
        __metadata("design:type", Boolean)
    ], Company.prototype, "compInDelivery", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_cd_delivery', default: 'P', type: 'char', length: 1, comment: 'Delivery type = V-Fixed value / P-Percent' }),
        __metadata("design:type", String)
    ], Company.prototype, "compCdDelivery", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_vl_delivery', type: 'decimal', precision: 10, scale: 2, comment: 'Delivery value', nullable: true }),
        __metadata("design:type", Number)
    ], Company.prototype, "compVlDelivery", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_tags', type: 'varchar', length: 200, comment: 'Tags', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsTags", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_vl_rating', type: 'decimal', precision: 10, scale: 2, comment: 'Rating', nullable: true }),
        __metadata("design:type", Number)
    ], Company.prototype, "compVlRating", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'comp_ds_logo', type: 'varchar', length: 500, comment: 'Logo', nullable: true }),
        __metadata("design:type", String)
    ], Company.prototype, "compDsLogo", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Segment_1.Segment; }, { eager: true }),
        __metadata("design:type", Segment_1.Segment)
    ], Company.prototype, "segment", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Address_1.Address; }, { eager: true }),
        __metadata("design:type", Address_1.Address)
    ], Company.prototype, "address", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return User_1.User; }, { eager: true }),
        __metadata("design:type", User_1.User)
    ], Company.prototype, "user", void 0);
    Company = __decorate([
        (0, typeorm_1.Entity)({ name: 'Company' })
    ], Company);
    return Company;
}(BaseEntity_1.BaseEntity));
exports.Company = Company;
//# sourceMappingURL=Company.js.map