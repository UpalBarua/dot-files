import './ExpenseItem.css';

function ExpenseItem() {
  return (
    <div>
      <div className="expense-item">March 28th 2021</div>
      <div>
        <h2 className="expense-item__title">Car Insurance</h2>
        <div className="expense-item__price">$294.67</div>
      </div>
    </div>
  );
}

export default ExpenseItem;
