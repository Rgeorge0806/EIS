#To try to analyze this data, I took the data from when electrode 3 was the counter electrode and electrode 4 was the working electrode

# Install and load necessary packages
if (!require(readxl)) install.packages("readxl")
if (!require(ggplot2)) install.packages("ggplot2")

library(readxl)
library(ggplot2)

# Read data from the Excel file
file_path <- "impedance_data.xlsx"  # Update with the correct path to your file
impedance_data <- read_excel(file_path)

# Inspect the column names
print(colnames(impedance_data))

nyquist_plot <- ggplot(impedance_data, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`)) +
  geom_point() +
  geom_line() +
  labs(title = "Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the plot
print(nyquist_plot)

# Add annotations to the Nyquist plot
nyquist_plot <- ggplot(impedance_data, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`)) +
  geom_point() +
  geom_line() +
  labs(title = "Control Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90")) +
  geom_text(aes(label = ifelse(`Frequency (Hz)` == max(`Frequency (Hz)`), "High Frequency", "")), hjust = -0.1) +
  geom_text(aes(label = ifelse(`Frequency (Hz)` == min(`Frequency (Hz)`), "Low Frequency", "")), hjust = -0.1) +
  annotate("text", x = mean(impedance_data$`Z' (Ω)`), y = min(impedance_data$`-Z'' (Ω)`), label = "Semicircle", vjust = -1)

# Print the annotated plot
print(nyquist_plot)

#THAT WAS THE CONTROL PLOT, NOW LET'S DO OTHER PLOTS
#POSTINCISION__________________________________________________________________

# Read data from the Excel file
file_path_post_incision <- "impedance_data_post_incision.xlsx"  # Update with the correct path to your file
impedance_data_post_incision <- read_excel(file_path_post_incision)

# Inspect the column names
print(colnames(impedance_data_post_incision))

# Adjust column names in the plot code based on the inspection
nyquist_plot_post_incision <- ggplot(impedance_data_post_incision, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`)) +
  geom_point() +
  geom_line() +
  labs(title = "Post-Incision Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the plot
print(nyquist_plot_post_incision)

#POST FRACTURE___________________________________________________________________
# Install and load necessary packages

# Read data from the Excel file
file_path_post_fracture <- "impedance_data_post_fracture.xlsx"  # Update with the correct path to your file
impedance_data_post_fracture <- read_excel(file_path_post_fracture)

# Inspect the column names
print(colnames(impedance_data_post_fracture))

# Adjust column names in the plot code based on the inspection
nyquist_plot_post_fracture <- ggplot(impedance_data_post_fracture, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`)) +
  geom_point() +
  geom_line() +
  labs(title = "Post-Fracture Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the plot
print(nyquist_plot_post_fracture)

#POST SALINE

# Read data from the Excel file
file_path_post_saline <- "impedance_data_post_saline.xlsx"  # Update with the correct path to your file
impedance_data_post_saline <- read_excel(file_path_post_saline)

# Inspect the column names
print(colnames(impedance_data_post_saline))

# Adjust column names in the plot code based on the inspection
nyquist_plot_post_saline <- ggplot(impedance_data_post_saline, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`)) +
  geom_point() +
  geom_line() +
  labs(title = "Post-Saline Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the plot
print(nyquist_plot_post_saline)

#POST CEMENT__________________________________________________________________

# Read data from the Excel file
file_path_post_cement <- "impedance_data_post_cement.xlsx"  # Update with the correct path to your file
impedance_data_post_cement <- read_excel(file_path_post_cement)

# Inspect the column names
print(colnames(impedance_data_post_cement))

# Adjust column names in the plot code based on the inspection
nyquist_plot_post_cement <- ggplot(impedance_data_post_cement, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`)) +
  geom_point() +
  geom_line() +
  labs(title = "Post-Cement Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the plot
print(nyquist_plot_post_cement)

#COMPARING ALL NYQUIST PLOTS TOGETHER__________________________________________
# Install and load necessary packages
if (!require(readxl)) install.packages("readxl")
if (!require(ggplot2)) install.packages("ggplot2")
if (!require(dplyr)) install.packages("dplyr")

library(readxl)
library(ggplot2)
library(dplyr)

# Read data from the Excel files
file_path_control <- "impedance_data.xlsx"
file_path_post_incision <- "impedance_data_post_incision.xlsx"
file_path_post_fracture <- "impedance_data_post_fracture.xlsx"
file_path_post_saline <- "impedance_data_post_saline.xlsx"
file_path_post_cement <- "impedance_data_post_cement.xlsx"

# Load the data
impedance_data_control <- read_excel(file_path_control) %>% mutate(Condition = "Control")
impedance_data_post_incision <- read_excel(file_path_post_incision) %>% mutate(Condition = "Post-Incision")
impedance_data_post_fracture <- read_excel(file_path_post_fracture) %>% mutate(Condition = "Post-Fracture")
impedance_data_post_saline <- read_excel(file_path_post_saline) %>% mutate(Condition = "Post-Saline")
impedance_data_post_cement <- read_excel(file_path_post_cement) %>% mutate(Condition = "Post-Cement")

# Combine all data
combined_impedance_data <- bind_rows(
  impedance_data_control,
  impedance_data_post_incision,
  impedance_data_post_fracture,
  impedance_data_post_saline,
  impedance_data_post_cement
)

# Inspect the combined data
print(head(combined_impedance_data))

# Create a combined Nyquist plot
combined_nyquist_plot <- ggplot(combined_impedance_data, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`, color = Condition)) +
  geom_point() +
  geom_line() +
  labs(title = "Combined Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]",
       color = "Condition") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the combined plot
print(combined_nyquist_plot)

#can't see control on the plot
# Inspect the control data
print(head(impedance_data_control))
summary(impedance_data_control)

# Plot control data separately
control_plot <- ggplot(impedance_data_control, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`)) +
  geom_point(color = "blue") +
  geom_line(color = "blue") +
  labs(title = "Control Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the control plot
print(control_plot)

# Create a combined Nyquist plot with different shapes and sizes for points
combined_nyquist_plot <- ggplot(combined_impedance_data, aes(x = `Z' (Ω)`, y = `-Z'' (Ω)`, color = Condition, shape = Condition)) +
  geom_point(size = 3) +
  geom_line() +
  labs(title = "Combined Nyquist Plot",
       x = "Z' (Real Part) [Ω]",
       y = "-Z'' (Imaginary Part) [Ω]",
       color = "Condition", shape = "Condition") +
  theme_minimal() +
  coord_fixed() +
  scale_y_reverse() +  # Invert the y-axis to follow Nyquist plot convention
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the combined plot
print(combined_nyquist_plot)


#BODE PLOT_________________________________________________________
# Install and load necessary packages
if (!require(readxl)) install.packages("readxl")
if (!require(ggplot2)) install.packages("ggplot2")
if (!require(dplyr)) install.packages("dplyr")

library(readxl)
library(ggplot2)
library(dplyr)

# Read data from the Excel files
file_path_control <- "impedance_data.xlsx"
file_path_post_incision <- "impedance_data_post_incision.xlsx"
file_path_post_fracture <- "impedance_data_post_fracture.xlsx"
file_path_post_saline <- "impedance_data_post_saline.xlsx"
file_path_post_cement <- "impedance_data_post_cement.xlsx"

# Load the data
impedance_data_control <- read_excel(file_path_control) %>% mutate(Condition = "Control")
impedance_data_post_incision <- read_excel(file_path_post_incision) %>% mutate(Condition = "Post-Incision")
impedance_data_post_fracture <- read_excel(file_path_post_fracture) %>% mutate(Condition = "Post-Fracture")
impedance_data_post_saline <- read_excel(file_path_post_saline) %>% mutate(Condition = "Post-Saline")
impedance_data_post_cement <- read_excel(file_path_post_cement) %>% mutate(Condition = "Post-Cement")

# Combine all data
combined_impedance_data <- bind_rows(
  impedance_data_control,
  impedance_data_post_incision,
  impedance_data_post_fracture,
  impedance_data_post_saline,
  impedance_data_post_cement
)

# Inspect the column names
print(colnames(combined_impedance_data))

# Convert frequency to log scale for better visualization
combined_impedance_data <- combined_impedance_data %>%
  mutate(Frequency_Hz = as.numeric(`Frequency (Hz)`),
         Magnitude_Ohm = sqrt(`Z' (Ω)`^2 + `-Z'' (Ω)`^2),
         Phase_Degree = atan2(`-Z'' (Ω)`, `Z' (Ω)`) * (180 / pi))

# Create a combined Bode plot for magnitude
bode_magnitude_plot <- ggplot(combined_impedance_data, aes(x = Frequency_Hz, y = Magnitude_Ohm, color = Condition)) +
  geom_point() +
  geom_line() +
  scale_x_log10() +
  labs(title = "Combined Bode Plot - Magnitude",
       x = "Frequency (Hz)",
       y = "Magnitude (Ω)",
       color = "Condition") +
  theme_minimal() +
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Create a combined Bode plot for phase
bode_phase_plot <- ggplot(combined_impedance_data, aes(x = Frequency_Hz, y = Phase_Degree, color = Condition)) +
  geom_point() +
  geom_line() +
  scale_x_log10() +
  labs(title = "Combined Bode Plot - Phase",
       x = "Frequency (Hz)",
       y = "Phase (Degree)",
       color = "Condition") +
  theme_minimal() +
  theme(panel.grid.major = element_line(color = "grey80"),
        panel.grid.minor = element_line(color = "grey90"))

# Print the combined Bode plots
print(bode_magnitude_plot)
print(bode_phase_plot)





