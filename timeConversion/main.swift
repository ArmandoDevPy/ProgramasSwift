import Foundation

let s : String = "12:01:00AM"
var horaFinal : String = ""
var hora : String = ""
var newHora : Int = 0
var horaString : String = ""

if s.contains("P"){
  //PM
  horaFinal = s.replacingOccurrences(of: "PM", with: "")
  hora = String(horaFinal.prefix(2))

  if hora != "12" {
    
    if let horaInt = Int(hora){

      newHora = horaInt + 12
      horaString = String(format: "%02d", newHora)

      let finalNum = horaFinal.replacingOccurrences(of: hora, with: horaString)

      print(finalNum)

    }else{
      print("No se puedo convertir")
    }
  }else{
    
    horaFinal = s.replacingOccurrences(of: "PM", with: "")
    print(horaFinal)
    
  }
}else{
  //AM

  horaFinal = s.replacingOccurrences(of: "AM", with: "")
  hora = String(horaFinal.prefix(2))

  if hora != "12" {
    print(horaFinal)
  }else {

    if let horaInt = Int(hora){

      newHora = horaInt - 12
      horaString = String(format: "%02d", newHora)

      let finalNum = horaFinal.replacingOccurrences(of: hora, with: horaString)

      print(finalNum)

    }else{
      print("No se puedo convertir")
    }
    
  }
}
