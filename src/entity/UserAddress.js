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
exports.UserAddress = void 0;
var typeorm_1 = require("typeorm");
var Address_1 = require("./Address");
var BaseEntity_1 = require("./BaseEntity");
var User_1 = require("./User");
var UserAddress = /** @class */ (function (_super) {
    __extends(UserAddress, _super);
    function UserAddress() {
        return _super !== null && _super.apply(this, arguments) || this;
    }
    __decorate([
        (0, typeorm_1.Column)({ name: 'usad_in_default', comment: 'Default Address (0-Falte, 1=True)', default: true }),
        __metadata("design:type", Boolean)
    ], UserAddress.prototype, "usadInDefault", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return User_1.User; }),
        __metadata("design:type", User_1.User)
    ], UserAddress.prototype, "user", void 0);
    __decorate([
        (0, typeorm_1.ManyToOne)(function () { return Address_1.Address; }, { eager: true }),
        __metadata("design:type", Address_1.Address)
    ], UserAddress.prototype, "address", void 0);
    UserAddress = __decorate([
        (0, typeorm_1.Entity)({ name: 'UserAddress' })
    ], UserAddress);
    return UserAddress;
}(BaseEntity_1.BaseEntity));
exports.UserAddress = UserAddress;
//# sourceMappingURL=UserAddress.js.map