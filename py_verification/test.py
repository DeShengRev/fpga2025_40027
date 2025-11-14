import numpy as np

x1 = [11.120, 11.586, 12.070, 12.532, 13.012, 13.494, 13.958, 14.422, 14.900, 15.360, 15.836, 16.318, 16.782, 17.240, 17.696, 18.156]
x2 = [15.400, 15.894, 16.340, 16.830, 17.300, 17.770, 18.244, 18.708, 19.172, 19.628, 20.106, 20.594, 21.062, 21.524, 22.000, 22.466]


def expr(xs):
    t_avg = 23.1
    f_avg = 36980
    xs = np.array(xs)
    l_diff = xs[8:] - xs[:8]
    l_avg = np.mean(l_diff)
    lam_avg = l_avg / 4
    print(l_avg, lam_avg)
    v_ce = f_avg * lam_avg / 100
    v_li = 331.45 * np.sqrt(1+t_avg/273.15)
    v_err = np.abs(v_ce - v_li) / v_li
    print(v_ce, v_li, f"{v_err * 100 : .4f}%")


    S_l = np.sqrt(np.sum((l_diff - l_avg) ** 2) / (8-1)) * 10
    u_l = np.sqrt(S_l ** 2 + 0.03 ** 2)
    u_lam = u_l / 4
    print(S_l, u_l, u_lam)
    S_f = 0
    u_f = 1
    u_r = np.sqrt((u_lam / lam_avg / 10) ** 2 + (u_f / f_avg) ** 2)
    u_v = u_r * v_ce
    print(u_r, u_v)






expr(x2)