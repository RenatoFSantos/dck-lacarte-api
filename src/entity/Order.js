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
exports.Order = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Company_1 = require("./Company");
var UserAddress_1 = require("./UserAddress");
var Order = /** @class */ (function (_super) {
    __extends(Order, _super);
    function Order() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'orde_qn_total', type: 'decimal', precision: 10, scale: 2, comment: 'Total amount', default: 0 }),
        __metadata("design:type", Number)
    ], Order.prototype, "orderQnTotal", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orde_vl_discount', type: 'decimal', precision: 10, scale: 2, comment: 'Total discount amount', default: 0 }),
        __metadata("design:type", Number)
    ], Order.prototype, "orderVlDiscount", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orde_vl_delivery', type: 'decimal', precision: 10, scale: 2, comment: 'Total delivery value', default: 0 }),
        __metadata("design:type", Number)
    ], Order.prototype, "orderVlDelivery", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orde_vl_total', type: 'decimal', precision: 10, scale: 2, comment: 'Total order value', default: 0 }),
        __metadata("design:type", Number)
    ], Order.prototype, "orderVlTotal", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orde_in_payment', type: 'varchar', length: 3, comment: 'Payment methods: CRE-Credcard, DEB-Debit, CSH-Cash, PIX, VCH-Voucher', default: 'CSH' }),
        __metadata("design:type", String)
    ], Order.prototype, "orderInPayment", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return UserAddress_1.UserAddress; }, { eager: true }),
        __metadata("design:type", UserAddress_1.UserAddress)
    ], Order.prototype, "userAddress", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Company_1.Company; }, { eager: true }),
        __metadata("design:type", Company_1.Company)
    ], Order.prototype, "company", void 0);
    Order = __decorate([
        (0, typeorm_1.Entity)({ name: 'Order' })
    ], Order);
    return Order;
}(BaseEntity_1.BaseEntity));
exports.Order = Order;
//# sourceMappingURL=Order.js.map