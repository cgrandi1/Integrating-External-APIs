import React from 'react';


class App extends React.Component {
  componentDidMount(){
    fetch('https://api.treasuryprime.com/account/:id', {
      method: 'GET'
    })
    .then(response => response.json())
    
    console.log(response)
  }
  render(){
    return (
      <div className="App">
        App
      </div>
    );
  }

}

export default App;
