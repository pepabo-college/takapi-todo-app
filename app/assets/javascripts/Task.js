import React from "react";

export default class Task extends React.Component {
  handleUpdate(e) {
    e.preventDefault();
    this.props.onTaskUpdate({task: {id: this.props.id, status: e.target.value}});
  }

  render() {
    return (
      <tr key={this.props.id}>
        <td className={this.props.status}>
          {this.props.content}
        </td>
        <td className={this.props.status}>
          <select className="form-control" defaultValue={this.props.status} onChange={this.handleUpdate.bind(this)} >
            <option value="todo" key="todo">todo</option>
            <option value="doing" key="doing">doing</option>
            <option value="done" key="done">done</option>
          </select>
        </td>
      </tr>
    );
  }
}
