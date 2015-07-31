---
title: API Reference

language_tabs:
  - shell

toc_footers:
  - <a href='https://access.redhat.com/insights'>Red Hat Access Insights</a>
  - <a href='https://access.redhat.com'>Red Hat Customer Portal</a>
  - <a href='http://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Reports

## Get All Reports

```shell
curl -u $USER:$PWD "https://access.redhat.com/r/insights/v1/reports"
```

> The above command returns JSON structured like this:

```json
[
  {
    "details": {
      "error_key": "VULNERABLE_BASH_DETECTED",
      "package": "bash-4.1.2-14.el6.x86_64"
    },
    "id": 1,
    "rule_id": "bash_injection|VULNERABLE_BASH_DETECTED",
    "machine_id": "68067825f6d21af7416ef2b70fd9797dcf1d058",
    "account_number": "000006",
    "uuid": "e80f8877-f04c-4b9d-a997-5c6b7755c574",
    "date": "2015-06-29T14:42:21.000Z",
    "rule": {
      "rule_id": "bash_injection|VULNERABLE_BASH_DETECTED",
      "description": "CVE-2014-6271, CVE-2014-7169  (Shellshock)",
      "category": "Security",
      "severity": "ERROR",
      "node_id": "1200223"
    },
    "system": {
      "machine_id": "68067825f6d21af7416ef2b70fd9797dcf1d058",
      "display_name": null,
      "account_number": "000006",
      "hostname": "rhel64.local.redhat.com",
      "last_check_in": "2015-06-29T14:42:21.000Z",
      "created_at": "2015-06-29T14:42:18.000Z",
      "updated_at": "2015-06-29T14:50:40.000Z",
      "unregistered_at": null
    }
  },
  {
    "details": {
      "rhevh": null,
      "rpm": "openssl-1.0.0-27.el6",
      "error_key": "OPENSSL_CVE_2014_0224"
    },
    "id": 2,
    "rule_id": "CVE_2014_0224|OPENSSL_CVE_2014_0224",
    "machine_id": "68067825f6d21af7416ef2b70fd9797dcf1d058",
    "account_number": "000006",
    "uuid": "e80f8877-f04c-4b9d-a997-5c6b7755c574",
    "date": "2015-06-29T14:42:21.000Z",
    "rule": {
      "rule_id": "CVE_2014_0224|OPENSSL_CVE_2014_0224",
      "description": "CVE-2014-0224 (CCS Injector)",
      "category": "Security",
      "severity": "ERROR",
      "node_id": "904433"
    },
    "system": {
      "machine_id": "68067825f6d21af7416ef2b70fd9797dcf1d058",
      "display_name": null,
      "account_number": "000006",
      "hostname": "rhel64.local.redhat.com",
      "last_check_in": "2015-06-29T14:42:21.000Z",
      "created_at": "2015-06-29T14:42:18.000Z",
      "updated_at": "2015-06-29T14:50:40.000Z",
      "unregistered_at": null
    }
  }
]
```

This endpoint retrieves all reports.

### HTTP Request

`GET https://access.redhat.com/r/insights/v1/reports`


## Get a Specific Report

```shell
curl -u $USER:$PWD "https://access.redhat.com/r/insights/v1/reports/1"
```

> The above command returns JSON structured like this:

```json
{
  "details": {
    "error_key": "VULNERABLE_BASH_DETECTED",
    "package": "bash-4.1.2-14.el6.x86_64"
  },
  "id": 1,
  "rule_id": "bash_injection|VULNERABLE_BASH_DETECTED",
  "machine_id": "68067825f6d21af7416ef2b70fd9797dcf1d058",
  "account_number": "000006",
  "uuid": "e80f8877-f04c-4b9d-a997-5c6b7755c574",
  "date": "2015-06-29T14:42:21.000Z",
  "rule": {
    "rule_id": "bash_injection|VULNERABLE_BASH_DETECTED",
    "description": "CVE-2014-6271, CVE-2014-7169  (Shellshock)",
    "category": "Security",
    "severity": "ERROR",
    "node_id": "1200223"
  },
  "system": {
    "machine_id": "68067825f6d21af7416ef2b70fd9797dcf1d058",
    "display_name": null,
    "account_number": "000006",
    "hostname": "rhel64.local.redhat.com",
    "last_check_in": "2015-06-29T14:42:21.000Z",
    "created_at": "2015-06-29T14:42:18.000Z",
    "updated_at": "2015-06-29T14:50:40.000Z",
    "unregistered_at": null
  }
}
```

This endpoint retrieves a specific report.

### HTTP Request

`GET https://access.redhat.com/r/insights/v1/reports/1`

### URL Parameters

Parameter | Description
--------- | -----------
ID | The ID of the report to retrieve

