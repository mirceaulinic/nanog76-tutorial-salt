#!jinja|yaml|gpg

banner: MANAGED BY SALT. DO NOT MODIFY

srv_id: {{ opts.id | replace('srv', '') | int }}
username: salt
password: |
  -----BEGIN PGP MESSAGE-----

  hQGMAxza1+W2GiuDAQwAnUSBwACHcu/U72kYZC9QDFgihlQKaQ09qSmKPSYc4uiu
  rS192sEZ2+T6AIQ3X9KmZI57B3DyGMZI2q1ANOwoF9VjTDUM+5nfyqrhIb/6tum4
  M3+WnShCFzXP1teWrBjFaQiLxpO4QyV4TTm3knkexBQRbS61cNAAt/hRGC8tHELY
  akE3NWycfYuGNTb3mo1/kbdJaq2wWxRn/nnOfJPFecWtHXnlo4/OT0bjySgNnc9F
  pvHsOZRbBd78XaoL2GFHJpt7QTG7xf3jV9imp64s9jN45EIKuuSfYLfUbI9nfNm2
  /w9I3VaGMo1lCQGGsMFTQHo+0OUA1g88SrZWHk8nLwx+EIbB9RplJaQUrd64Ui3Y
  rJCXhN77DP2/cduzT40L9JEfnFUnVEJ7U9mMA5/UNoA/ThEw1DgnQjf2WNe5Mnrz
  Ud32Tv2+QY2PMVuVsDEM1+Cf2f8x3kvKNUSJNiqiQU3sOYjQl0si2QizeIe0HuQI
  u9+i1PZ6j5esXFcSVx3U0ksBcZTnTtlN9lD5RvikwhY9yaUaWBSyc9+9mr+mhYvT
  zJzgcWIo12TmmjCQJcgnPVQq1ZKsxwOKHhaPt5sOBlhY9C8dK2S7iS9Ecxw=
  =tCH4
  -----END PGP MESSAGE-----

drivers:
  - eos
  - junos

tesuto_username: salt
tesuto_password: |
  -----BEGIN PGP MESSAGE-----

  hQGMAxza1+W2GiuDAQwAlUR31nK1vvxF/4vwuwhpUdYGm/D4eyO62KXVI3gM2Yui
  eAlxix7fVeIgmZUYeqWwvih6BT+vHavCFtuFDPSFMU6I7W9N2lHiKi1zJCs19nhL
  Y+b7UzAkMIHRDPZNGDb5O2DiVdTKBmZ2TJ8Ked7pIWVgT1OzWkWtlZGVkAdhcBAZ
  5AH6alKelbXmmpfmD8z+kDIlUQEdhsW7vRlGaDVCBZYhuWMMt94h/MrmEmvJzAGk
  RMJ3Ic+LJwQOScnvbuE5a9eZqe/L6gPmFyCmTX6H/meGmgz3c6AUimadzcWKRCqx
  EJQdBEAoaT0Z22cp+ozfnoGau4suY3ns32VpzA/RO8ydl1Kl+9V1Y9gAM05S2qPT
  LQAiM+I4/tRQFtanah3aQHLeMR4cWQsRzEZiuSQZp8wXb6qVpyZRnxRFvO8fYf4f
  oUW7m0RhjhMazal7cG5zJdU0NCfrQmpmZCLLRAeTtFEtbKI+OD8ePfhkzkaaJ95N
  Mq83mMF0DnD+e32Y0NuP0ksBfmTqSXx953yoG6s0jOFfcJy5V1SKH4gDvNeQWtGu
  98iY9NkDm/WSsSrH/SSlzbv3PivxpzdqJcYpcdTWjNFTa8Qhji9IyVkScq4=
  =SINy
  -----END PGP MESSAGE-----
