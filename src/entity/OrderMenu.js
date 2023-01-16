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
exports.OrderMenu = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Menu_1 = require("./Menu");
var Order_1 = require("./Order");
var OrderMenu = /** @class */ (function (_super) {
    __extends(OrderMenu, _super);
    function OrderMenu() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'orme_qn_item', type: 'smallint', comment: 'Itens amount', default: 1 }),
        __metadata("design:type", Number)
    ], OrderMenu.prototype, "ormeQnItem", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orme_vl_item', type: 'decimal', precision: 10, scale: 2, comment: 'Unit value without discount', default: 0 }),
        __metadata("design:type", Number)
    ], OrderMenu.prototype, "ormeVlItem", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orme_vl_discount', type: 'decimal', precision: 10, scale: 2, comment: 'Value of discount', default: 0 }),
        __metadata("design:type", Number)
    ], OrderMenu.prototype, "ormeVlDiscount", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orme_vl_total', type: 'decimal', precision: 10, scale: 2, comment: 'Total item value', default: 0 }),
        __metadata("design:type", Number)
    ], OrderMenu.prototype, "ormeVlTotal", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'orme_vl_rating', type: 'decimal', precision: 10, scale: 2, comment: 'Item rating', default: 0 }),
        __metadata("design:type", Number)
    ], OrderMenu.prototype, "ormeVlRating", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Order_1.Order; }, { eager: true }),
        __metadata("design:type", Order_1.Order)
    ], OrderMenu.prototype, "order", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Menu_1.Menu; }, { eager: true }),
        __metadata("design:type", Menu_1.Menu)
    ], OrderMenu.prototype, "menu", void 0);
    OrderMenu = __decorate([
        (0, typeorm_1.Entity)({ name: 'OrderMenu' })
    ], OrderMenu);
    return OrderMenu;
}(BaseEntity_1.BaseEntity));
exports.OrderMenu = OrderMenu;
//# sourceMappingURL=OrderMenu.js.map