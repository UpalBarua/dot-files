import './ExpenseItem.css';

function ExpenseItem(props) {
  const day = props.date.toLocaleString('en-US', { day: 'numeric' });
  return (
    <div className="expense-item">
      <div>
        <div>{day}</div>
      </div>
      <div className="expense-item__description">
        <h2>{props.title}</h2>
        <div className="expense-item__price">${props.amount}</div>
      </div>
    </div>
  );
}

export default ExpenseItem;
