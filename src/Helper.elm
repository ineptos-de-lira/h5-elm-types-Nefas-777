module Helper exposing (..)

type GradeStatus
    = Approved
    | Failed
    | Pending

categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map
        (\grade ->
            if grade < 0 then
                Pending

            else if grade > 7 then
                Approved

            else
                Failed
        )
        grades


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled

airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        OnTime ->
            "Siga a la puerta de embarque"

        Boarding ->
            "Último llamado para abordar"

        Delayed ->
            "Consulte las pantallas para actualizaciones"

        Cancelled ->
            "Vaya con un agente para reubicación"

airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses