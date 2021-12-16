function meslek (thePlayer,cmd,komut)
    if komut == "basla" then
    if not isElementWithinColShape(thePlayer,alan1) then
    outputChatBox("[GRP]:#FFFFFF Alan dışında Olduğunuz için Meslek yapamassınız!",thePlayer,4, 0, 241,true)
    return end
    if getElementData(thePlayer, "meslek:basla") then
    outputChatBox("[GRP]:#FFFFFF Zaten Mesleği yapıyorsun",thePlayer,4, 0, 241,true)
    return end

    outputChatBox("[GRP]:#FFFFFF Mesleğe başarıyla başladınız Lütfen bekleyin.",thePlayer,4, 0, 241,true)
    setElementData(thePlayer,"meslek:basla",true)
    setPedAnimation(thePlayer, "baseball", "bat_4")    


    setTimer(function()
    setElementData(thePlayer,"meslek:basla",nil)
    setPedAnimation(thePlayer)    
    outputChatBox("[GRP]:#FFFFFF Mesleğiniz başarılı bir şekilde bitti ve 2200 TL mağış aldınız.",thePlayer,4, 0, 241,true)
    givePlayerMoney(thePlayer,para)
    end, sure, 1)



end
end
addCommandHandler("meslek", meslek)


--start [GRP]
--stop [GRP]