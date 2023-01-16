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
exports.Address = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Address = /** @class */ (function (_super) {
    __extends(Address, _super);
    function Address() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_nm_address', type: "varchar", length: 50, comment: 'Address Name', nullable: true }),
        __metadata("design:type", String)
    ], Address.prototype, "addrNmAddress", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_cd_type', type: "char", length: 1, comment: 'Address type: R-Residencial, C-Comercial', default: 'R' }),
        __metadata("design:type", String)
    ], Address.prototype, "addrCdType", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_ds_address', type: "varchar", length: 100, comment: 'Address' }),
        __metadata("design:type", String)
    ], Address.prototype, "addrDsAddress", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_ds_number', type: "varchar", length: 10, comment: 'Address number', nullable: true }),
        __metadata("design:type", String)
    ], Address.prototype, "addrDsNumber", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_ds_complement', type: "varchar", length: 100, comment: 'Address complement', nullable: true }),
        __metadata("design:type", String)
    ], Address.prototype, "addrDsComplement", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_nm_district', type: "varchar", length: 100, comment: 'District', nullable: true }),
        __metadata("design:type", String)
    ], Address.prototype, "addrNmDistrict", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_nm_city', type: "varchar", length: 50, comment: 'City' }),
        __metadata("design:type", String)
    ], Address.prototype, "addrNmCity", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_sg_state', type: "varchar", length: 2, comment: 'State', nullable: true }),
        __metadata("design:type", String)
    ], Address.prototype, "addrSgState", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'addr_cd_zipcode', type: "varchar", length: 8, comment: 'Zipcode' }),
        __metadata("design:type", String)
    ], Address.prototype, "addrCdZipcode", void 0);
    Address = __decorate([
        (0, typeorm_1.Entity)({ name: 'Address' })
    ], Address);
    return Address;
}(BaseEntity_1.BaseEntity));
exports.Address = Address;
//# sourceMappingURL=Address.js.map