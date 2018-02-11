class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCqU0AMu794IaMvJtwvnCxXiGSxjGWBtHW+BbgP0CWPf3GEZqkYwsi9fGgx0fPWuIu6L0adqv/Z85C2KMjHHA1FC6kh84ntYv+2EvXKgkq7+kLHLsMuZwwnUedgeKVVTeIF2vD2f6D9S2GqEuPmOPzyCwhebzd9vJq8744HlP9GEyxgph39RUg5domrQmycrDt70snIFJCrnTxBKYkQxd5MYYnx8G/ZtqYuayh+aBmdeTMsWVmpik9r/ZMwfEqN/BNc25G+k5aACENuGcnbH5KOPvqtdUWhSfQnuHi2dUeyPJthGQrmAdo6MEJx1AQJdbyR/+/p9rAmJDlQ56VCawlx',
	}  
}
