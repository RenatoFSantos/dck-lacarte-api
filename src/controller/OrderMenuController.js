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
Object.defineProperty(exports, "__esModule", { value: true });
exports.OrderMenuController = void 0;
var OrderMenu_1 = require("../entity/OrderMenu");
var BaseController_1 = require("./BaseController");
var OrderMenuController = /** @class */ (function (_super) {
    __extends(OrderMenuController, _super);
    function OrderMenuController() {
        return _super.call(this, OrderMenu_1.OrderMenu) || this;
    }
    return OrderMenuController;
}(BaseController_1.BaseController));
exports.OrderMenuController = OrderMenuController;
//# sourceMappingURL=OrderMenuController.js.map