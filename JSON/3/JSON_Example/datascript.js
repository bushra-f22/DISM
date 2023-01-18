fetch("products.json").then((data)=>{
    return data.json();
 })
.then((oD)=>{
    let output = "";
    oD.map((item)=>{
        output += `
            <tr>
                 <td>${item.id}</td>
                <td><img src='${item.image}' width='50px' height='50px'/></td>
                <td>${item.name}</td>
                <td>${item.price}</td>
                <td>${item.inventory}</td>
                <td>${item.productcode}</td>           
            </tr>
        `;    
    })
   document.getElementById("data-output").innerHTML = output;
})
