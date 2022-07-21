function ExpenseDate(props) {
  const day = props.date.toLocaleString('en-US', { day: 'numeric' });
  const month = props.date.toLocaleString('en-US', { month: 'long' });
  const year = props.date.toLocaleString('en-US', { year: 'numeric' });

  return (
    <div>
      <div>{day}</div>
      <div>{month}</div>
      <div>{year}</div>
    </div>
  );
}

export default ExpenseDate;
