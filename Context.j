npm i socket.io-client
app js
import {io} from 'socket.io-client';
const socket = io('http://143.110.188.183:4500', {
transports: ['websocket'],
});

context file
import {createContext} from 'react';
const SocketContext = createContext();
export default SocketContext;


<SocketContext.Provider value={socket}>

</SocketContext.Provider>


to use socket instance on other file

import {useContext} from 'react';


import SocketContext from '../../services/SocketContext';

const socket = useContext(SocketContext);
