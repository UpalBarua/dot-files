function ExpenseDate(props) {
  const day = props.toLocaleString('en-US', { day: 'numeric' });
  const month = props.toLocaleString('en-US', { month: 'long' });
  const year = props.toLocaleString('en-US', { year: 'numeric' });

  return (
    <div>
      <div>{day}</div>
      <div>{month}</div>
      <div>{year}</div>
    </div>
  );
}

export default ExpenseDate;
