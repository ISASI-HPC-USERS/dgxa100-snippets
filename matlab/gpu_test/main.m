if gpuDeviceCount > 0
    gpuInfo = gpuDevice;
    disp(gpuInfo.Name);
else
    disp('GPU not found!');
    return;
end

N = 1000;
A = gpuArray.rand(N, N);
B = gpuArray.rand(N, N);

C = A + B;

C_cpu = gather(C);

disp(C_cpu);

