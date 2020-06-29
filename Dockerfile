# Start with a base image containing Java runtime
FROM adoptopenjdk/openjdk11
# Create work folder
RUN mkdir /work

# Make port 9102 available to the world outside this container
EXPOSE 9102

# Copying the application's jar file inside the container
COPY target/testing-junit5-mockito-1.0.jar /work/app.jar

# Run the jar file 
CMD java -jar /work/app.jar
