N = 200000;
r = gpuArray.linspace(0,4,N);
numIterations = 1000;

numGPUs = gpuDeviceCount("available");
parpool(numGPUs);

numSimulations = 100;
X = zeros(numSimulations,N,"gpuArray");

parfor i = 1:numSimulations
    X(i,:) = rand(1,N,"gpuArray");
    for n=1:numIterations
        X(i,:) = r.*X(i,:).*(1-X(i,:));
    end
end

f = figure('visible','off');
plot(r,X,'.',MarkerSize=1)
xlabel("Growth Rate")
ylabel("Population")
saveas(f,'multiple_gpu','jpg');

