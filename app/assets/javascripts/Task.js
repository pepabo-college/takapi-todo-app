import React from "react";
import ReactDOM from "react-dom";

export default class Task extends React.Component {
  handleUpdate(e) {
    e.preventDefault();
    this.props.onTaskUpdate({task: {id: this.props.id, status: e.target.value}});
  }

  handleSubmit(e) {
    e.preventDefault();
    var memo = ReactDOM.findDOMNode(this.refs.memo).value.trim();
    if (!memo) {
      return;
    }
    console.log(memo);
    this.props.onTaskUpdate({task: {id: this.props.id, memo: memo}});
    return;
  }

  render() {
    return (
      <tr key={this.props.id}>
        <td>
          {this.props.content}
        </td>
        <td>
          <select className="form-control" defaultValue={this.props.status} onChange={this.handleUpdate.bind(this)} >
            <option value="todo" key="todo">todo</option>
            <option value="doing" key="doing">doing</option>
            <option value="done" key="done">done</option>
          </select>
        </td>
        <td>
          {this.props.memo}
        </td>
        <td>
          <form className="form-inline" onSubmit={this.handleSubmit.bind(this)}>
            <input type="text" className="form-control" placeholder="memo" ref="memo" />
            <input type="submit" className="btn btn-default" value="Post" />
          </form>
        </td>
      </tr>
    );
  }
}
