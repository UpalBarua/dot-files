import './ExpenseDate.css';

function ExpenseDate(props) {
  const day = props.date.toLocaleString('en-US', { day: 'numeric' });
  const month = props.date.toLocaleString('en-US', { month: 'long' });
  const year = props.date.toLocaleString('en-US', { year: 'numeric' });

  return (
    <div className="expense-date">
      <div>{day className="expense-item__day"}</div>
      <div>{month className="expense-item__month"}</div>
      <div>{year className="expense-item__year"}</div>
    </div>
  );
}

export default ExpenseDate;
