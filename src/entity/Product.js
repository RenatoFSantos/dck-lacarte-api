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
exports.Product = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Category_1 = require("./Category");
var Product = /** @class */ (function (_super) {
    __extends(Product, _super);
    function Product() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'prod_cd_standard', type: 'varchar', length: 15, comment: 'Standard product code', nullable: true }),
        __metadata("design:type", String)
    ], Product.prototype, "prodCdStandard", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prod_nm_product', type: 'varchar', length: 50, comment: 'Product name', default: '' }),
        __metadata("design:type", String)
    ], Product.prototype, "prodNmProduct", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prod_ds_product', type: 'varchar', length: 500, comment: 'Product description', nullable: true }),
        __metadata("design:type", String)
    ], Product.prototype, "prodDsProduct", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prod_ds_recipe', type: 'varchar', length: 500, comment: 'Recipe', nullable: true }),
        __metadata("design:type", String)
    ], Product.prototype, "prodDsRecipe", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prod_tx_image', type: 'varchar', length: 100, comment: 'Standard product image', nullable: true }),
        __metadata("design:type", String)
    ], Product.prototype, "prodTxImage", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prod_ds_descriptor', type: 'varchar', length: 200, comment: 'List of descritores to facilitasse the search for products (start descriptors with #)', nullable: true }),
        __metadata("design:type", String)
    ], Product.prototype, "prodDsDescriptor", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Category_1.Category; }, { eager: true }),
        __metadata("design:type", Category_1.Category)
    ], Product.prototype, "category", void 0);
    Product = __decorate([
        (0, typeorm_1.Entity)({ name: 'Product' })
    ], Product);
    return Product;
}(BaseEntity_1.BaseEntity));
exports.Product = Product;
//# sourceMappingURL=Product.js.map