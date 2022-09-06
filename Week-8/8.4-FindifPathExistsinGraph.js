var validPath = function(n, edges, source, destination) {

  let graph = new Map();
  let visited = new Set();
  
  for(let [e1,e2] of edges){
    if(graph.has(e1)){
      graph.get(e1).push(e2);
    } else {
      graph.set(e1, [e2]);
    }

    if(graph.has(e2)){
      graph.get(e2).push(e1);
    } else {
      graph.set(e2, [e1]);
    }
  }
  function dfs(vertex){
    visited.add(vertex);
    let edgesV  = graph.get(vertex);
    if (edgesV && edgesV.length > 0){
      for (let e of edgesV){
        if(!visited.has(e)){
          dfs(e);
        }
      }
    }
  }

  dfs(source);

  return visited.has(destination);
};

console.log(validPath(6,[[0,1],[0,2],[3,5],[5,4],[4,3]],0,5));

// OUTPUT:- False