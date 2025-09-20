function diffusion_seq = deal_bet_showdown(shuffleCards_seq, X, Y)
round = 0;
while cardIdx <= Len
    round = round + 1;
    dealNum = dealSeq(round);
    if cardIdx + 3*dealNum - 1 > Len
        remain = Len - cardIdx + 1;
        dealNum = max(1, floor(remain/3));
    end

    for p = 1:3
        player = playerOrder(p);
        for j = 1:dealNum
            chip = chipSeq(chipIdx);
            betResult = bitxor(cards_seq(cardIdx), chip);
            chipIdx = chipIdx + 1;

            diffCard(p, j) = mod(betResult + prevPlayerSum, 256);
            diffusion_seq(cardIdx) = diffCard(p, j);

            faceSum(player) = faceSum(player) + cards_seq(cardIdx);
            chipSum(player) = chipSum(player) + chip;

            cardIdx = cardIdx + 1;
        end
        prevPlayerSum = sum(diffCard(p, 1:dealNum));
    end

    scores = 0.6 * faceSum + 0.4 * chipSum;
    [~, w] = max(scores);
    playerOrder = playerOrder([w, setdiff(1:3,w)]);
end

end
