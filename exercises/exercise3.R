emp_id = c(11,12,13,14,15)
dep = c('Sales', 'HR', 'Sales', 'HR', 'Sales')
basic = c(25450, 22500, 21000, 23500, 15000)
allowances = c(5200, 4500, 3100, 2600, 1800)
emp_sal = data.frame(emp_id, dep, basic, allowances)
print(emp_sal)

net_sal = emp_sal$basic + emp_sal$allowances
emp_sal$net_sal = c(net_sal)
print(emp_sal)

print(emp_sal$net_sal[emp_sal$dep =='Sales'])

print(emp_sal$emp_id[emp_sal$net_sal > 25000])

print(emp_sal$emp_id[emp_sal$dep == 'HR' & emp_sal$net_sal < 25000])
print(emp_sal$emp_id[emp_sal$dep == 'Sales' & emp_sal$net_sal < 25000])
