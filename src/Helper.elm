module Helper exposing (..)

type GradeStatus = "Approved" | "Failed" | "Pending";

const categoricalGrade = (grades: number[]): GradeStatus[] => {
  return grades.map(grade => {
    if (grade < 0) return "Pending";
    if (grade > 7) return "Approved";
    return "Failed";
  });
};

type AirplaneStatus = "OnTime" | "Boarding" | "Delayed" | "Cancelled";

const airplaneScheduleAction = (status: AirplaneStatus): string => {
  const actions: Record<AirplaneStatus, string> = {
    "OnTime": "Proceed to gate",
    "Boarding": "Last call for passengers",
    "Delayed": "Check monitors for updates",
    "Cancelled": "See agent for rebooking"
  };
  return actions[status];
};

const airportAction = (statuses: AirplaneStatus[]): string[] => {
  return statuses.map(airplaneScheduleAction);
};