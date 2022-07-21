import './ExpenseDate.css';

function ExpenseDate(props) {
  const day = props.date.toLocaleString('en-US', { day: 'numeric' });
  const month = props.date.toLocaleString('en-US', { month: 'long' });
  const year = props.date.toLocaleString('en-US', { year: 'numeric' });

  return (
    <div className="expense-date">
      <div className="expense-item__day">{day}</div>
      <div className="expense-item__month">{month}</div>
      <div className="expense-item__year">{year}</div>
    </div>
  );
}

export default ExpenseDate;
