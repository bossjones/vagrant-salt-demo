vagrant:
  '*.local':
    - roles.web.frontend
    - roles.data.db
    - roles.data.cache
    - roles.web.backend
    - roles.worker
    - roles.worker.master
