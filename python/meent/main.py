import torch

import meent

# backend 0 = Numpy
# backend 1 = JAX
# backend 2 = PyTorch

backend = 2

pol = 0  # 0: TE, 1: TM

n_top = 1  # n_topncidence
n_bot = 1  # n_transmission

theta = 0 * torch.pi / 180  # angle of incidence
# phi = 0 * torch.pi / 180  # angle of rotation

wavelength = 900

thickness = torch.tensor([500., 1000.])  # thickness of each layer, from top to bottom.
period = torch.tensor([1000.])  # length of the unit cell. Here it's 1D.

fto = [10]

type_complex = torch.complex128
device = torch.device('cpu')

ucell_1d_m = torch.tensor([
    [[0, 0, 0, 1, 1, 1, 1, 0, 0, 0, ]],
    [[1, 1, 1, 1, 0, 1, 1, 1, 1, 1, ]],
    ]) * 4 + 1.  # refractive index

mee = meent.call_mee(backend=backend, pol=pol, n_top=n_top, n_bot=n_bot, theta=theta,
                      fto=fto, wavelength=wavelength, period=period, ucell=ucell_1d_m,
                      thickness=thickness, type_complex=type_complex, device=device)

mee.ucell.requires_grad = True
mee.thickness.requires_grad = True

result = mee.conv_solve()
res = result.res
de_ri, de_ti = res.de_ri, res.de_ti
loss = de_ti[de_ti.shape[0] // 2, de_ti.shape[1] // 2 + 1]

loss.backward()
print('ucell gradient:')
print(mee.ucell.grad)
print('thickness gradient:')
print(mee.thickness.grad)
