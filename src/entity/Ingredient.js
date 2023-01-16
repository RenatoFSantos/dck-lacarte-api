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
exports.Ingredient = void 0;
var typeorm_1 = require("typeorm");
var BaseEntity_1 = require("./BaseEntity");
var Ingredient = /** @class */ (function (_super) {
    __extends(Ingredient, _super);
    function Ingredient() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'ingr_cd_ingredient', type: 'varchar', length: 45, comment: 'Ingredient code' }),
        __metadata("design:type", String)
    ], Ingredient.prototype, "ingrCdIngredient", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'ingr_nm_ingredient', type: 'varchar', length: 45, comment: 'Name' }),
        __metadata("design:type", String)
    ], Ingredient.prototype, "ingrNmIngredient", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'ingr_ds_ingredient', type: 'varchar', length: 45, comment: 'Description', nullable: true }),
        __metadata("design:type", String)
    ], Ingredient.prototype, "ingrDsIngredient", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'ingr_sg_unit', type: 'varchar', length: 5, comment: 'Ingredient unit' }),
        __metadata("design:type", String)
    ], Ingredient.prototype, "ingr_sg_unit", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'ingr_qn_unit', type: 'decimal', precision: 10, scale: 2, comment: 'Value of the weight or basic unit of movement of the input in the stock.', default: 0 }),
        __metadata("design:type", Number)
    ], Ingredient.prototype, "ingrQnUnit", void 0);
    __decorate([
        (0, typeorm_1.Column)({ name: 'ingr_vl_average', type: 'decimal', precision: 2, scale: 2, comment: 'Average ingredient price', default: 0 }),
        __metadata("design:type", Number)
    ], Ingredient.prototype, "ingrVlAverage", void 0);
    Ingredient = __decorate([
        (0, typeorm_1.Entity)({ name: 'Ingredient' })
    ], Ingredient);
    return Ingredient;
}(BaseEntity_1.BaseEntity));
exports.Ingredient = Ingredient;
//# sourceMappingURL=Ingredient.js.map