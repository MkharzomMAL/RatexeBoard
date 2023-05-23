


    <footer class="px-4 bg-primary fixed-bottom text-white text-center py-1 d-flex justify-content-between">
        <p>{{ $company->name }}</p>
        <span id="currentDateTime"></span>
    </footer>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <!-- Include JavaScript to update current date and time -->
    <script>
        // Get the current date and time
        function getCurrentDateTime() {
            var currentDateTime = new Date();
            var options = { year: 'numeric', month: 'long', day: 'numeric', hour: 'numeric', minute: 'numeric' };
            return currentDateTime.toLocaleString('en-US', options);
        }
        
        // Update the current date and time every second
        function updateCurrentDateTime() {
            var currentDateTimeElement = document.getElementById('currentDateTime');
            if (currentDateTimeElement) {
                currentDateTimeElement.textContent = getCurrentDateTime();
            }
        }
        
        // Call the updateCurrentDateTime function initially
        updateCurrentDateTime();
        
        // Update the current date and time every second
        setInterval(updateCurrentDateTime, 1000);
    </script>

    <script>
        document.getElementById("submit-btn").addEventListener("click", function() {
        document.getElementById("update-form").submit();
        });
    </script>

</body>
</html>