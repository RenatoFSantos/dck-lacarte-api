"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Routes = void 0;
var AddressController_1 = require("./controller/AddressController");
var CategoryController_1 = require("./controller/CategoryController");
var CompanyController_1 = require("./controller/CompanyController");
var FidelityController_1 = require("./controller/FidelityController");
var MenuController_1 = require("./controller/MenuController");
var ProductController_1 = require("./controller/ProductController");
var PromotionController_1 = require("./controller/PromotionController");
var SegmentController_1 = require("./controller/SegmentController");
var StorageController_1 = require("./controller/StorageController");
var UserAddressController_1 = require("./controller/UserAddressController");
var UserController_1 = require("./controller/UserController");
var RefreshTokenUserController_1 = require("./refreshTokenUser/RefreshTokenUserController");
var VoucherController_1 = require("./voucher/VoucherController");
exports.Routes = [
    { method: "get", route: "/users", controller: UserController_1.UserController, action: "all" },
    { method: "get", route: "/users/email/:email", controller: UserController_1.UserController, action: "getUserByEmail" },
    { method: "get", route: "/users/:id", controller: UserController_1.UserController, action: "one" },
    { method: "post", route: "/users/sendEmail", controller: UserController_1.UserController, action: "sendEmail" },
    { method: "post", route: "/users/create", controller: UserController_1.UserController, action: "createUser" },
    { method: "post", route: "/users/auth", controller: UserController_1.UserController, action: "auth" },
    { method: "post", route: "/users/refreshtoken", controller: RefreshTokenUserController_1.RefreshTokenUserController, action: "handle" },
    { method: "post", route: "/users", controller: UserController_1.UserController, action: "save" },
    { method: "delete", route: "/users/:id", controller: UserController_1.UserController, action: "remove" },
    { method: "get", route: "/segments", controller: SegmentController_1.SegmentController, action: "all" },
    { method: "get", route: "/segments/:id", controller: SegmentController_1.SegmentController, action: "one" },
    { method: "post", route: "/segments", controller: SegmentController_1.SegmentController, action: "save" },
    { method: "delete", route: "/segments/:id", controller: SegmentController_1.SegmentController, action: "remove" },
    { method: "get", route: "/companies", controller: CompanyController_1.CompanyController, action: "all" },
    { method: "get", route: "/companies/:id", controller: CompanyController_1.CompanyController, action: "one" },
    { method: "post", route: "/companies", controller: CompanyController_1.CompanyController, action: "save" },
    { method: "delete", route: "/companies/:id", controller: CompanyController_1.CompanyController, action: "remove" },
    { method: "get", route: "/address", controller: AddressController_1.AddressControler, action: "all" },
    { method: "get", route: "/address/:id", controller: AddressController_1.AddressControler, action: "one" },
    { method: "post", route: "/address", controller: AddressController_1.AddressControler, action: "save" },
    { method: "delete", route: "/address/:id", controller: AddressController_1.AddressControler, action: "remove" },
    { method: "get", route: "/usersaddress", controller: UserAddressController_1.UserAddressController, action: "all" },
    { method: "get", route: "/usersaddress/users/:id", controller: UserAddressController_1.UserAddressController, action: "getAddressByUser" },
    { method: "get", route: "/usersaddress/:id", controller: UserAddressController_1.UserAddressController, action: "one" },
    { method: "post", route: "/usersaddress", controller: UserAddressController_1.UserAddressController, action: "save" },
    { method: "delete", route: "/usersaddress/:id", controller: UserAddressController_1.UserAddressController, action: "remove" },
    { method: "get", route: "/fidelities", controller: FidelityController_1.FidelityController, action: "all" },
    { method: "get", route: "/fidelities/:id", controller: FidelityController_1.FidelityController, action: "one" },
    { method: "get", route: "/fidelities/:id/promotion", controller: FidelityController_1.FidelityController, action: "getFidelityByPromotion" },
    { method: "get", route: "/fidelities/:id/user", controller: FidelityController_1.FidelityController, action: "getFidelityByUser" },
    { method: "get", route: "/fidelities/:iduser/user/:idpromotion/promotion", controller: FidelityController_1.FidelityController, action: "getFidelityByUserPromotion" },
    { method: "post", route: "/fidelities", controller: FidelityController_1.FidelityController, action: "save" },
    { method: "delete", route: "/fidelities/:id", controller: FidelityController_1.FidelityController, action: "remove" },
    { method: "get", route: "/categories", controller: CategoryController_1.CategoryController, action: "all" },
    { method: "get", route: "/categories/:id", controller: CategoryController_1.CategoryController, action: "one" },
    { method: "post", route: "/categories", controller: CategoryController_1.CategoryController, action: "save" },
    { method: "delete", route: "/categories/:id", controller: CategoryController_1.CategoryController, action: "remove" },
    { method: "get", route: "/products", controller: ProductController_1.ProductController, action: "all" },
    { method: "get", route: "/products/:id", controller: ProductController_1.ProductController, action: "one" },
    { method: "get", route: "/products/name/:search", controller: ProductController_1.ProductController, action: "getProductByName" },
    { method: "post", route: "/products", controller: ProductController_1.ProductController, action: "save" },
    { method: "delete", route: "/products/:id", controller: ProductController_1.ProductController, action: "remove" },
    { method: "get", route: "/menus", controller: MenuController_1.MenuController, action: "all" },
    { method: "get", route: "/menus/company/:id", controller: MenuController_1.MenuController, action: "getMenuByCompany" },
    { method: "get", route: "/menus/:id", controller: MenuController_1.MenuController, action: "one" },
    { method: "post", route: "/menus", controller: MenuController_1.MenuController, action: "save" },
    { method: "delete", route: "/menus/:id", controller: MenuController_1.MenuController, action: "remove" },
    { method: "get", route: "/promotions", controller: PromotionController_1.PromotionController, action: "all" },
    { method: "get", route: "/promotions/company/:id", controller: PromotionController_1.PromotionController, action: "getPromotionByCompany" },
    { method: "get", route: "/promotions/:id", controller: PromotionController_1.PromotionController, action: "one" },
    { method: "post", route: "/promotions", controller: PromotionController_1.PromotionController, action: "save" },
    { method: "delete", route: "/promotions/:id", controller: PromotionController_1.PromotionController, action: "remove" },
    { method: "get", route: "/storage/:filename", controller: StorageController_1.StorageController, action: "getFile" },
    { method: "post", route: "/voucher", controller: VoucherController_1.VoucherController, action: "handle" },
];
//# sourceMappingURL=routes.js.map