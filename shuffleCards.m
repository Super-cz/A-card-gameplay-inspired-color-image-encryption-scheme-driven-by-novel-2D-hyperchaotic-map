function [shuffled_sequence, x1, y1] = shuffleCards(original_array, numShuffles, X, Y)
    RiffleShuffled_array = RiffleShuffle(original_array);

    swappedArray = swapMiddle(RiffleShuffled_array);

    OverhandShuffled_array = OverhandShuffle(swappedArray, numShuffles, X, Y);
%     disp('OverhandShuffle array:'); disp(OverhandShuffled_array); 

    shuffled_sequence = OverhandShuffled_array; 
    

    function shuffled_array = RiffleShuffle(array)
        n = numel(array); 
        mid = floor((n + 1) / 2);

        shuffled_array = zeros(1, n);

        shuffled_array(1:2:n) = array(1:mid);
        shuffled_array(2:2:n) = array(mid+1:end);
    end

    function shuffledArray = OverhandShuffle(array, numShuffles, X, Y)
        n = length(array);
        shuffledArray = array;
    
        start_X = mod(ceil(X * 10^15), n) + 1;
        end_Y = mod(ceil(Y * 10^15), n) + 1;

        startIdx = min(start_X, end_Y);
        endIdx = max(start_X, end_Y);

        for i = 1:numShuffles
            part = shuffledArray(startIdx(i):endIdx(i));
            shuffledArray(startIdx(i):endIdx(i)) = [];
            shuffledArray = [part, shuffledArray];
        end
    end

    function swappedArray = swapMiddle(array)
        n = numel(array);
        mid = ceil(n / 2);
        swappedArray = [array(mid+1:end), array(1:mid)];
    end
end



