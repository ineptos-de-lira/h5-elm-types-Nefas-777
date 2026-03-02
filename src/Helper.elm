module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


gradeValue : Float -> GradeStatus
gradeValue grade =
    if grade < 0 then
        Pending

    else if grade < 7 then
        Failed

    else
        Approved


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map gradeValue grades


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction list =
    List.map airplaneScheduleAction list
