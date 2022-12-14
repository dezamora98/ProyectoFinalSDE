library ieee ;
    use ieee.std_logic_1164.all ;
    use ieee.numeric_std.all ;

entity InterfaceLct1407 is
    port (
        Clk, Rst, Cs : in std_logic;
		ack: out std_logic;
        
		Miso: in std_logic;
        Conv, Sck: out std_logic;
		
        DataCh0, DataCh1: out std_logic_vector(0 to 13) 
    );
end InterfaceLct1407 ;

architecture arch of InterfaceLct1407 is

    type state is (StStandby, StConv, StReadData);
    signal NextState, CurrentState: state;
    signal Count: integer range 0 to 34;
    signal ClkDiv: std_logic;
begin

    StateMemory : process(Clk)
    begin
        if Clk'event and Clk = '1' then
            if rst = '1' then
                ClkDiv <= '0';
                Count <= 0;
                CurrentState <= StStandby;
            else
                CurrentState <= NextState;   
                if CurrentState = StStandby then
                    Count <= 0;
                    ClkDiv <= '0';
                else
                    ClkDiv <= not ClkDiv; 
                    if ClkDiv = '0' then
                        count <= count + 1;
                    end if ;
                end if ;
            end if ;
        end if ;
    end process ; -- StateMemory

    ClcNextState : process(CurrentState,Count,Cs)
    begin
	
		NextState <= CurrentState;
		
        case( CurrentState ) is
        
            when StStandby =>
                if Cs = '1' then
                    NextState <= StConv;
                end if ;

            when StConv =>
                if Count = 1 then
                    NextState <= StReadData;
                end if ;

            When StReadData =>
                if  Count = 34 then
                    NextState <= StStandby ;                   
                end if ;

            when others => 
				NextState <= StStandby ;    
        
        end case ;
        
    end process ; -- ClcNextState

    LoadReg : process( clk )
    begin
        if clk'event and clk = '1' then
            if rst = '1' then
                DataCh0 <= (others => '0');
                DataCh1 <= (others => '0');
            else
                if CurrentState = StReadData and ClkDiv = '0' then
                    if Count > 2 and Count < 17 then
                        DataCh0(13 - (Count-3)) <= Miso;
                    elsif Count > 18 and count < 33 then
                        DataCh1(13 - (Count-19)) <= Miso;
                    end if ;
                end if ;
            end if ;
        end if ;
    end process ; -- LoadReg

    ack <= '1' when CurrentState = StStandby else '0';
    Conv <= '1' when CurrentState = StConv else '0';
    sck <= ClkDiv;

end architecture ; -- arch