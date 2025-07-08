compteur = 0

function updateLabel()
    labelValeur:setText(tostring(compteur))
end

function increment()
    compteur = compteur + 1
    updateLabel()
end

function decrement()
    if compteur > 0 then
        compteur = compteur - 1
        updateLabel()
    end
end

function reset()
    compteur = 0
    updateLabel()
end

function run()
    win = gui:window()

    -- Titre
    local labelTitre = gui:label(win, 10, 10, 200, 30)
    labelTitre:setText("Compteur")
    labelTitre:setFontSize(20)
    labelTitre:setHorizontalAlignment(LEFT_ALIGNMENT)

    -- Valeur du compteur
    labelValeur = gui:label(win, 0, 70, 320, 80)
    labelValeur:setText("0")
    labelValeur:setFontSize(64)
    labelValeur:setHorizontalAlignment(CENTER_ALIGNMENT)

    -- Dimensions et positions des boutons agrandis et centrés
    local btnWidth, btnHeight = 80, 80
    local spacing = 40
    local totalWidth = btnWidth * 2 + spacing
    local startX = (320 - totalWidth) / 2  -- centrer par rapport à la largeur du labelValeur (320)

    -- Box +1 avec image agrandi
    boxPlus = gui:box(win, startX, 180, btnWidth, btnHeight)
    local imgPlus = gui:image(boxPlus, "plus1.png", 0, 0, btnWidth, btnHeight, COLOR_WHITE)
    boxPlus:onClick(increment)

    -- Box -1 avec image agrandi
    boxMoins = gui:box(win, startX + btnWidth + spacing, 180, btnWidth, btnHeight)
    local imgMoins = gui:image(boxMoins, "moins1.png", 0, 0, btnWidth, btnHeight, COLOR_WHITE)
    boxMoins:onClick(decrement)

    -- Bouton Reset centré sous les deux boutons
    btnReset = gui:button(win, (320 - 140) / 2, 280, 140, 40)
    btnReset:setText("Reset")
    btnReset:onClick(reset)

    gui:setWindow(win)
end
