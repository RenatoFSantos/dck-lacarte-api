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
exports.ProductIngredient = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Ingredient_1 = require("./Ingredient");
var Product_1 = require("./Product");
var ProductIngredient = /** @class */ (function (_super) {
    __extends(ProductIngredient, _super);
    function ProductIngredient() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'prin_qn_recipe', type: 'decimal', precision: 10, scale: 2, comment: 'Amount used in recipe', default: 0 }),
        __metadata("design:type", Number)
    ], ProductIngredient.prototype, "prinQnRecipe", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prin_vl_ingredient', type: 'decimal', precision: 10, scale: 2, comment: 'Ingredient cost', default: 0 }),
        __metadata("design:type", Number)
    ], ProductIngredient.prototype, "prinVlIngredient", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'prin_ds_recipe', type: 'varchar', length: 250, comment: 'Recipe', nullable: true }),
        __metadata("design:type", String)
    ], ProductIngredient.prototype, "prinDsRecipe", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Product_1.Product; }, { eager: true }),
        __metadata("design:type", Product_1.Product)
    ], ProductIngredient.prototype, "product", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Ingredient_1.Ingredient; }, { eager: true }),
        __metadata("design:type", Ingredient_1.Ingredient)
    ], ProductIngredient.prototype, "ingredient", void 0);
    ProductIngredient = __decorate([
        (0, typeorm_1.Entity)({ name: 'ProductIngredient' })
    ], ProductIngredient);
    return ProductIngredient;
}(BaseEntity_1.BaseEntity));
exports.ProductIngredient = ProductIngredient;
//# sourceMappingURL=ProductIngredient.js.map