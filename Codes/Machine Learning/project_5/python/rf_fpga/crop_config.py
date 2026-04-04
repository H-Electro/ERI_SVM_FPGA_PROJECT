CROP_CODE_TO_NAME = {
    0: "Cotton",
    1: "Rice",
    2: "Maize",
    3: "Potato",
    4: "Sugarcane",
    5: "Wheat",
}

CROP_NAME_TO_CODE = {name: code for code, name in CROP_CODE_TO_NAME.items()}


def get_crop_name_from_code(code: int) -> str:
    code = int(code)
    if code not in CROP_CODE_TO_NAME:
        raise ValueError(
            f"Invalid crop code {code}. Valid codes: {sorted(CROP_CODE_TO_NAME.keys())}"
        )
    return CROP_CODE_TO_NAME[code]


def get_crop_code_from_name(name: str) -> int:
    if name not in CROP_NAME_TO_CODE:
        raise ValueError(
            f"Invalid crop name {name}. Valid names: {sorted(CROP_NAME_TO_CODE.keys())}"
        )
    return CROP_NAME_TO_CODE[name]
