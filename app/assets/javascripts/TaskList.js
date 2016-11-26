import React from "react";
import Task from "./Task";

export default class TaskList extends React.Component {
  render() {
    var tasks = this.props.data.map((task) => {
      return (
        <Task key={task.id} id={task.id}
              content={task.content} status={task.status} onTaskUpdate={this.props.onTaskUpdate} onTaskDestroy={this.props.onTaskDestroy} >
        </Task>
      );
    });
    return (
      <tbody>
        {tasks}
      </tbody>
    );
  }
}
