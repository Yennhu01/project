export const registerFormControls = [
    {
        name: 'userName',
        label: 'Tên người dùng',
        placeholder: 'Nhập tên người dùng của bạn',
        componentType: 'input',
        type: 'text',
    },
    {
        name: 'email',
        label: 'Email',
        placeholder: 'Nhập email của bạn',
        componentType: 'input',
        type: 'email',
    },
    {
        name: 'password',
        label: 'Mật khẩu',
        placeholder: 'Nhập mật khẩu của bạn',
        componentType: 'input',
        type: 'password',
    },
]

export const loginFormControls = [
    {
        name: 'email',
        label: 'Email',
        placeholder: 'Nhập email của bạn',
        componentType: 'input',
        type: 'email',
    },
    {
        name: 'password',
        label: 'Mật khẩu',
        placeholder: 'Nhập mật khẩu của bạn',
        componentType: 'input',
        type: 'password',
    },
];

export const addProductFormElements = [
    {
        label: "Tiêu đề",
        name: "title",
        componentType: "input",
        type: "text",
        placeholder: "Nhập tiêu đề sản phẩm",
    },
    {
        label: "Mô tả",
        name: "description",
        componentType: "textarea",
        placeholder: "Nhập mô tả sản phẩm",
    },
    {
        label: "Danh mục",
        name: "category",
        componentType: "select",
        options: [
            { id: "men", label: "Nam" },
            { id: "women", label: "Nữ" },
            { id: "kids", label: "Trẻ em" },
            { id: "accessories", label: "Phụ kiện" },
            { id: "footwear", label: "Giày dép" },
        ],
    },
    {
        label: "Thương hiệu",
        name: "brand",
        componentType: "select",
        options: [
            { id: "nike", label: "Nike" },
            { id: "adidas", label: "Adidas" },
            { id: "puma", label: "Celine" },
            { id: "levi", label: "YSL" },
            { id: "zara", label: "Vivienne Westwood" },
            { id: "h&m", label: "Ralph Lauren" },
        ],
    },
    {
        label: "Giá",
        name: "price",
        componentType: "input",
        type: "number",
        placeholder: "Nhập giá sản phẩm",
    },
    {
        label: "Giá khuyến mãi",
        name: "salePrice",
        componentType: "input",
        type: "number",
        placeholder: "Nhập giá khuyến mãi (tuỳ chọn)",
    },
    {
        label: "Tổng số lượng",
        name: "totalStock",
        componentType: "input",
        type: "number",
        placeholder: "Nhập tổng số lượng sản phẩm",
    },
];

export const shoppingViewHeaderMenuItems = [
    {
        id: 'home',
        label: 'Trang chủ',
        path: '/shop/home',
    },
    {
        id: 'men',
        label: 'Nam',
        path: '/shop/listing',
    },
    {
        id: 'women',
        label: 'Nữ',
        path: '/shop/listing',
    },
    {
        id: 'kids',
        label: 'Trẻ em',
        path: '/shop/listing',
    },
    {
        id: 'footwear',
        label: 'Giày dép',
        path: '/shop/listing',
    },
    {
        id: 'accessories',
        label: 'Phụ kiện',
        path: '/shop/listing',
    },
];

export const categoryOptionsMap = {
    men: "Nam",
    women: "Nữ",
    kids: "Trẻ em",
    accessories: "Phụ kiện",
    footwear: "Giày dép",
};

export const brandOptionsMap = {
    nike: "Nike",
    adidas: "Adidas",
    puma: "Celine",
    levi: "YSL",
    zara: "Vivienne Westwood ",
    "h&m": "Ralph LaurenM",
};

export const filterOptions = {
    category: [
        { id: "men", label: "Nam" },
        { id: "women", label: "Nữ" },
        { id: "kids", label: "Trẻ em" },
        { id: "accessories", label: "Phụ kiện" },
        { id: "footwear", label: "Giày dép" },
    ],
    brand: [
        { id: "nike", label: "Nike" },
        { id: "adidas", label: "Adidas" },
        { id: "puma", label: "Celine" },
        { id: "levi", label: "YSL" },
        { id: "zara", label: "Vivienne Westwood " },
        { id: "h&m", label: "Ralph Lauren" },
    ],
};

export const sortOptions = [
    { id: "price-lowtohigh", label: "Giá: Từ thấp đến cao" },
    { id: "price-hightolow", label: "Giá: Từ cao đến thấp" },
    { id: "title-atoz", label: "Tiêu đề: A đến Z" },
    { id: "title-ztoa", label: "Tiêu đề: Z đến A" },
];

export const addressFormControls = [
    {
        label: "Địa chỉ",
        name: "address",
        componentType: "input",
        type: "text",
        placeholder: "Nhập địa chỉ của bạn",
    },
    {
        label: "Thành phố",
        name: "city",
        componentType: "input",
        type: "text",
        placeholder: "Nhập thành phố của bạn",
    },
    {
        label: "Mã bưu điện",
        name: "pincode",
        componentType: "input",
        type: "text",
        placeholder: "Nhập mã bưu điện của bạn",
    },
    {
        label: "Số điện thoại",
        name: "phone",
        componentType: "input",
        type: "text",
        placeholder: "Nhập số điện thoại của bạn",
    },
    {
        label: "Ghi chú",
        name: "notes",
        componentType: "textarea",
        placeholder: "Nhập ghi chú bổ sung",
    },
];
