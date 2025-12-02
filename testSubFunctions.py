


def get_office_id_from_office_name(office_name, offices_table):
    result = offices_table.loc[
        offices_table['office_name'] == office_name,
        'office_id'
    ]
    return result.iloc[0] if not result.empty else None


def get_office_id_from_office_name(office_name, offices_table):
    result = offices_table.loc[
        offices_table['office_name'] == office_name,
        'office_id'
    ]
    return result.iloc[0] if not result.empty else None