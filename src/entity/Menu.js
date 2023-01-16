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
exports.Menu = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Company_1 = require("./Company");
var Product_1 = require("./Product");
var Menu = /** @class */ (function (_super) {
    __extends(Menu, _super);
    function Menu() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_cd_menu', type: 'varchar', length: 15, comment: 'Code on menu' }),
        __metadata("design:type", String)
    ], Menu.prototype, "menuCdMenu", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_vl_price', type: 'decimal', precision: 10, scale: 2, comment: 'Price', default: 0 }),
        __metadata("design:type", Number)
    ], Menu.prototype, "menuVlPrice", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_pr_discount', type: 'decimal', precision: 5, scale: 2, comment: 'Discount tax', default: 0 }),
        __metadata("design:type", Number)
    ], Menu.prototype, "menuPrDiscount", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_pr_delivery', type: 'decimal', precision: 5, scale: 2, comment: 'Delivery tax', default: 0 }),
        __metadata("design:type", Number)
    ], Menu.prototype, "menuPrDelivery", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_tx_image', type: 'varchar', length: 50, comment: 'Product image', nullable: true }),
        __metadata("design:type", String)
    ], Menu.prototype, "menuTxImage", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_pr_cashback', type: 'decimal', precision: 5, scale: 2, comment: 'Cashback tax', default: 0 }),
        __metadata("design:type", Number)
    ], Menu.prototype, "menuPrCashback", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_ds_descriptor', type: 'varchar', length: 50, comment: 'List of descritores to facilitasse the search for products (start descriptors with #)', nullable: true }),
        __metadata("design:type", String)
    ], Menu.prototype, "menuDsDescriptor", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'menu_vl_rating', type: 'decimal', precision: 5, scale: 2, comment: 'Rating of menu option', default: 0 }),
        __metadata("design:type", Number)
    ], Menu.prototype, "menuVlRating", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Company_1.Company; }, { eager: true }),
        __metadata("design:type", Company_1.Company)
    ], Menu.prototype, "company", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Product_1.Product; }, { eager: true }),
        __metadata("design:type", Product_1.Product)
    ], Menu.prototype, "product", void 0);
    Menu = __decorate([
        (0, typeorm_1.Entity)({ name: 'Menu' })
    ], Menu);
    return Menu;
}(BaseEntity_1.BaseEntity));
exports.Menu = Menu;
//# sourceMappingURL=Menu.js.map