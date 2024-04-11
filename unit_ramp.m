function r_t = unit_ramp(min_t,max_t,delay)
    t = min_t:max_t;
    r_t = zeros(size(t));
    
    for i = 1:length(t)
        if t(1,i) < delay
            r_t(1,i) = 0;
        elseif t(1,i) >= delay
            r_t(1,i) = i - (delay + abs(min(t)) + 1);
        end
    end
end