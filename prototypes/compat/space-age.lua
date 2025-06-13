if mods["space-age"] then
  ScrapIndustry.products["tungsten-scrap"] = {priority=3}
  ScrapIndustry.items["tungsten-carbide"] = {scrap="tungsten-scrap", scale=ScrapIndustry.UNCOMMON, failrate=0.03, recycle=1.5}
  ScrapIndustry.items["tungsten-plate"] = {scrap="tungsten-scrap", scale=ScrapIndustry.EXPENSIVE, failrate=0.01, recycle=4}
  ScrapIndustry.recipes["tungsten-carbide"] = {self_scrap=true}
  ScrapIndustry.recipes["casting-low-density-structure"] = {ignore=true}

  ScrapIndustry.products["holmium-scrap"] = {priority=3}
  ScrapIndustry.items["holmium-plate"] = {scrap="holmium-scrap", scale=ScrapIndustry.COMMON, failrate=0.02, recycle=1}
  ScrapIndustry.items["superconductor"] = {scrap={"holmium-scrap", "copper-scrap"}, scale=ScrapIndustry.COMMON, failrate=0.02}
  ScrapIndustry.items["supercapacitor"] = {scrap={"holmium-scrap", "circuit-scrap"}, scale=ScrapIndustry.UNCOMMON, failrate=0.01}

  if settings.startup["scrap-industry-plastic"].value then
    table.insert(ScrapIndustry.items["superconductor"].scrap, "plastic-bits")
  end

  ScrapIndustry.products["spoilage"] = {priority=0.1}
  ScrapIndustry.items["nutrients"] = {scrap="spoilage", scale=ScrapIndustry.FLAVOR, failrate=0.04}
  ScrapIndustry.items["yumako-mash"] = {scrap="spoilage", scale=ScrapIndustry.COMMON, failrate=0.03}
  ScrapIndustry.items["jelly"] = {scrap="spoilage", scale=ScrapIndustry.COMMON, failrate=0.02}
  ScrapIndustry.items["bioflux"] = {scrap="spoilage", scale=ScrapIndustry.UNCOMMON, failrate=0.01}
  ScrapIndustry.items["biter-egg"] = {scrap="spoilage", scale=ScrapIndustry.RARE, failrate=0.01}
  ScrapIndustry.items["pentapod-egg"] = {scrap="spoilage", scale=ScrapIndustry.RARE, failrate=0.01}
  ScrapIndustry.products["iron-bacteria"] = {ignore=true}
  ScrapIndustry.products["copper-bacteria"] = {ignore=true}

  ScrapIndustry.products["lithium-dust"] = {priority=10}
  ScrapIndustry.items["lithium"] = {scrap="lithium-dust", scale=ScrapIndustry.CHEAP, failrate=0.02, recycle=1}
  ScrapIndustry.items["lithium-plate"] = {scrap="lithium-dust", scale=ScrapIndustry.CHEAP, failrate=0.01, recycle=1}

  ScrapIndustry.items["quantum-processor"] = {scrap="circuit-scrap", scale=ScrapIndustry.LEGENDARY, failrate=-0.01}
  ScrapIndustry.recipes["quantum-processor"] = {failrate=0.01}

  ScrapIndustry.recipes["speed-module-3"] = {failrate=0.01}
  ScrapIndustry.recipes["productivity-module-3"] = {failrate=0.01}
  ScrapIndustry.recipes["efficiency-module-3"] = {failrate=0.01}
  ScrapIndustry.recipes["quality-module-3"] = {failrate=0.01}
end
