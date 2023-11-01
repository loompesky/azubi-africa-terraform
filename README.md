Provisioning an S3 Bucket with Terraform
SCENARIO
You work for a company that hosts various types of events, from technology conferences to nature retreats. They want to improve their digital presence by creating separate S3 buckets for different event themes. Your task is to use Terraform to provision these S3 buckets.



Guidelines:

Create a Terraform Configuration: Set up a Terraform configuration file named main.tf to define your resources.
Bucket Naming Convention: Each bucket should follow the naming convention: <event_theme>-<your_initials>-bucket. For example, if the event theme is "AdventureTech" and your initials are "JS," the bucket name should be AdventureTech-JS-bucket.
Event Themes: You are provided with a list of event themes. Choose at least three from the following list to create buckets for:
AdventureTech
NatureEscape
DataSummit
CodeCarnival
Bucket Configuration: All buckets should have the following configuration:
Region: Use the "us-west-2" region.
Access Control: Set the ACL to "private."
Output: Display the names of the created buckets as an output at the end of the Terraform run.

