# data:
The input data for T5 is under 'data/for_t5'


# experiments (original & ablations):

There are 24 models trained for spatial & temporal in total: in-domain * 6, all-domain * 6, out-domain * 12.

Preprocessing code: NAN.
Training code: train_t5.py. There are 12 .sh files under the 'experiment' folder . Run .sh file for each 2 models (spatial & temporal). 
Evaluation code: under the 'evaluation' folder. 



# results
Contain results of: {in-domain * 6 (spatial_blm_blm.txt, spatial_covid_covid.txt, spatial_calfire_calfire.txt, temporal_blm_blm.txt, temporal_covid_covid.txt, temporal_calfire_calfire.txt); all-domain * 6 (spatial_all_blm.txt, spatial_all_covid.txt, spatial_all_calfire.txt, temporal_all_blm.txt, temporal_all_covid.txt, temporal_all_calfire.txt) , out-domain * 12 (spatial_blm_covid.txt, spatial_blm_calfire.txt, spatial_covid_blm.txt, spatial_covid_calfire.txt, spatial_calfire_blm.txt, spatial_calfire_covid.txt, temporal_blm_covid.txt, temporal_blm_calfire.txt, temporal_covid_blm.txt, temporal_covid_calfire.txt, temporal_calfire_blm.txt, temporal_calfire_covid.txt) }




# analysis 

The code for analysis of: for those data in test set, why some are predicted more accurate, while others are less accurate? What features do accurate-predicted data share in common, and what features do non-accurate-predicted data share in common? 

We compute the average count of {Entity, Location, Date, Quantity, Noun, Verb} for each test data (the current sentence with special marker token inside + previous 3 sentences + the next 3 sentences).



