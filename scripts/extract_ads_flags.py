import xml.etree.ElementTree as ET

def extract_flags(cproject_file):
    tree = ET.parse(cproject_file)
    root = tree.getroot()

    includes = set()
    defines = set()

    for option in root.iter('option'):
        opt_id = option.attrib.get('id', '')
        if "compiler.option.include.paths" in opt_id:
            for inc in option.findall('listOptionValue'):
                includes.add(inc.attrib['value'])
        if "compiler.option.def.symbols" in opt_id:
            for sym in option.findall('listOptionValue'):
                defines.add(sym.attrib['value'])

    print("Include paths:")
    for inc in sorted(includes):
        print(f"  -I{inc} \ ")

    print("\nDefines:")
    for d in sorted(defines):
        print(f"  -D{d}")

if __name__ == "__main__":
    extract_flags(".cproject")
