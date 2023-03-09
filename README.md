# Chematox-db
## Table of contents
- [Project Description](#project-description)
- [Schema](#schema)
- [Setup](#setup)
- [Endpoints](#endpoints)


___

## Project Description
Chematox labs collected toxicology data for many years in the state of Colorado. This project is an attempt to analyze that data through visualization and statistical means. The end goal is to provide a resource for researchers interested in toxicology data and understanding trends in drug use over time. This data set is of particular interest because it will straddle the legalization of marijuana in Colorado in 2014. <br>
**I have been given permission to use this data by the owner of Chematox, Sarah Urfer, and steps have been taken to anonymize this data. If you spot any security issues please reach out to me.**

Future plans include
- API for querying entire database
- Statistical analysis of data via Pandas python data analysis library
- Front end for visualization of data in charts and graphs
___

## Setup

- `Ruby 3.2.1`
- `Rails 7.0.4.2'`
- [Fork this repository](https://github.com/mullinsand/chematox-db)
- Clone your fork
- From the command line, install gems and set up your DB:
- `bundle install`
- `rails db:{create,migrate,seed}`
- run the server with 'rails s'
___

## Schema: 

<img src="./app/assets/images/schema.png" alt="The schema of the project includes a table for Samples and Results." />

- Drop in the code below to dbdiagram.io for interactive diagram
```
Table "results" {
  "id" varchar
  "sample_id" bigint
  "drug" integer
  "level" string
  "unit" string
  "created_at" datetime
  "updated_at" datetime
}

Table "samples" {
  "id" varchar
  "subject_age" integer
  "line_number" integer
  "agency" string
  "offense" datetime
  "draw" datetime
  "created_at" datetime
  "updated_at" datetime
}

Ref "fk_rails_results_samples":"results"."sample_id" - "samples"."id"
```
___

## Endpoints
