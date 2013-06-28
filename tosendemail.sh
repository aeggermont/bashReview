#!/bin/bash

 if [[ ${foundError} -gt 0 ]]; then
    echo "+++ Emailing ${scriptAdmin}"
    /usr/bin/mail -s "${errorEmailSubject}" "${scriptAdmin}" << EOM
  ${errorMessage}

  Check the log ${GNETDIR}/logs/gnet_customer.log

  `date`
EOM


