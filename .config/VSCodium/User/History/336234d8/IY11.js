import './ExpenseItem.css';

function ExpenseItem(props) {
  const expenseDate = new Date(2022, 7, 15);
  const expenseName = 'Car Insurance';
  const expensePrice = 294.67;

  return (
    <div className="expense-item">
      <div>{props.Date}</div>
      <div className="expense-item__description">
        <h2>{props.title}</h2>
        <div className="expense-item__price">${props.price}</div>
      </div>
    </div>
  );
}

export default ExpenseItem;
